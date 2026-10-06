# 对齐正式发布的 Calcit 0.29 依赖

## 修改

- CLI/npm runtime 固定 `0.29.0-alpha.6`。
- UI `0.7.32-alpha.4`、Respo `0.16.114-alpha.7`、JS-FFI `0.2.1-alpha.13`。
- 迁移四处废弃调用：`add-watch!`、`distinct-values`、`non-nil?` 和字面量
  `match`。去重值集合、非 nil 判断、watcher 与原效果分支的语义保持不变。
- 源码通过 Calcit dry-run 与 Snapshot revision 保护事务更新，没有修改测试、
  元数据、公开函数参数或类型预算。
- 保留已有 COS PR 路径隔离、队列和生产部署门禁。

## 验证

严格 Caps 和 toolchain 校验通过，使用发布 tag 缓存，没有开发模块覆盖。
Yarn immutable install、默认严格入口、4/4 原生单元测试、JS 生成、
26/26 公开定义和 Vite 构建通过。

原有指标预算通过：typeNone 1、typeNotFull 12、schemaDynamic 23、
codeDynamic 0、codeNil 11、unresolved 34、declaredOptional 0、deprecatedCalls 0。
保留预算文件，升级没有以提高限额换取通过。

正式构建的浏览器示例验证消息新增和 Clear，覆盖 mount/unmount 效果分支；
浏览器没有 error。截图及生成 JS/报告保留在仓库外或忽略目录。

版本号仍为准备中的 0.0.29。PR 合并及正式 tag 发布前，Calcium/Reel 不能依赖
这个工作分支替代发布版本。该升级也不宣称已完成其余开放 Map 输入的类型收敛。
