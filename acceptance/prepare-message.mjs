import assert from 'node:assert/strict';
import {execFileSync,spawnSync} from 'node:child_process';
import {readFileSync,writeFileSync} from 'node:fs';
import {format_cirru} from '@calcit/procs';
const run=(...args)=>execFileSync('calcit',args,{encoding:'utf8',stdio:['ignore','pipe','pipe'],maxBuffer:8*1024*1024});
const json=(...args)=>JSON.parse(run(...args,'--format','json'));
const q=(...args)=>json('query',...args).data;
assert.equal(run('-v').trim(),'0.30.1');
const all=()=>{
  const values=[];
  const namespaces=q('ns').namespaces;
  assert.equal(namespaces.length,9);
  for(const ns of namespaces){
    const names=run('query','defs',ns).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);
    assert.equal(names.length,q('ns',ns).definition_count,ns);
    for(const name of names)values.push(q('def',`${ns}/${name}`));
  }
  assert.equal(values.length,32);
  assert.equal(values.reduce((n,d)=>n+d.tests.length,0),4);
  assert.equal(values.reduce((n,d)=>n+d.examples.length,0),18);
  return values;
};
const before=all(), expected=structuredClone(before);
const reviewed=JSON.parse(readFileSync('acceptance/reviewed-targets.json','utf8'));
for(const d of reviewed)assert.deepEqual(before.find(x=>x.id===d.id),d,d.id);
const baseline=[];
for(const ns of ['respo-message.action','respo-message.schema','respo-message.updater','respo-message.comp.messages']){
  const args=['analyze','check-examples','--ns',ns,...(ns==='respo-message.comp.messages'?['--js']:[])];
  const result=spawnSync('calcit',args,{encoding:'utf8',maxBuffer:8*1024*1024});
  assert.equal(result.signal,null);
  baseline.push({namespace:ns,status:result.status,stdout:result.stdout,stderr:result.stderr});
}
writeFileSync('acceptance/baseline-examples.json',JSON.stringify(baseline,null,2));
assert.equal(q('type','calcit.core/Option').methods.find(m=>m.name==='.some?')?.definition,'calcit.core/option:some?');
const by=id=>expected.find(d=>d.id===id);
by('respo-message.action/dict').examples[0][2][0]='.some?';
for(const example of by('respo-message.comp.messages/comp-messages').examples){
  assert.deepEqual(example[3],['fn',['info'],'nil']);
  example[3]=['fn',['info','d!'],'&unit'];
}
by('respo-message.schema/message').examples=[
  ['merge','respo-message.schema/message',['{}',[':text','|Hello'],[':token','|msg-1']]],
  ['merge','respo-message.schema/message',['{}',[':text','|Error occurred'],[':style',['{}',[':background-color',['respo.util.format/hsl','0','80','60']]]]]],
];
by('respo-message.schema/store').examples=[
  'respo-message.schema/store',
  ['merge','respo-message.schema/store',['{}',[':messages',['{}',['|msg-1',['{}',[':text','|Hello']]]]]]],
];
by('respo-message.config/site').schema=['::',"'Map","'Tag","'String"];
by('respo-message.comp.message/css-message').schema="'String";
const codePaths={
  'respo-message.comp.container/comp-container':['3.2.2.2.1.2.1.2.2.1.2'],
  'respo-message.comp.message/comp-message':['3.2.2.1.2.1'],
  'respo-message.updater/update-messages':['3.2.1.3','3.2.1.3.1'],
};
for(const [id,paths] of Object.entries(codePaths))for(const path of paths){
  const call=path.split('.').reduce((n,i)=>n[Number(i)],by(id).code);
  assert.equal(call[0],'&merge');call[0]='merge';
}
const operations=[];
for(let i=0;i<before.length;i++){
  const a=before[i],b=expected[i];
  if(JSON.stringify(a.code)!==JSON.stringify(b.code))operations.push(['edit','def',b.id,'--overwrite','--input-format','json-ast','--code',JSON.stringify(b.code)]);
  if(JSON.stringify(a.schema)!==JSON.stringify(b.schema))operations.push(['edit','schema',b.id,'--input-format','json-ast','--code',JSON.stringify(b.schema)]);
  if(JSON.stringify(a.examples)!==JSON.stringify(b.examples))operations.push(['edit','examples',b.id,'--code',format_cirru(b.examples.map(e=>['quote',e]),true)]);
}
assert.equal(operations.length,9);
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));
writeFileSync('acceptance/operations.json',JSON.stringify(operations,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));
assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
assert.deepEqual(all(),expected,'Only reviewed4code merges/7example bodies/2schemas change; all4tests and other contracts identical');
writeFileSync('acceptance/after.json',JSON.stringify(expected,null,2));
writeFileSync('acceptance/program-diff.json',run('analyze','program-diff','HEAD','--format','json'));
writeFileSync('acceptance/snapshot-blob.txt',execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}));
writeFileSync('acceptance/preserved.json',JSON.stringify({definitions:32,tests:4,examples:18,productionMergeCalls:4,changedExampleBodies:7,changedSchemas:2,originalTestsUnchanged:true,allOtherCodeDocsFFIUnchanged:true},null,2));
