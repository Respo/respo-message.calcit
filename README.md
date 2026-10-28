
## Respo Message for Calcit

> Message component for Respo apps.

Demo http://repo.respo-mvc.org/message.calcit/

### Calcit 0.32.0 候选：使用者需要注意

Message **0.1.0** 候选配对正式 CLI / `@calcit/procs` **0.32.0**、UI **0.9.0**、
Respo **0.17.0**、JS FFI **0.2.8**，传递 Router **0.9.0**。Respo/UI/Router 的正式 tag
尚未齐备，当前仅用独立本地候选图验收；不是 Caps 正式安装或可发布证明。
待整图发布后重新安装、生成 JS 并刷新，不用分支/hash 替代发布依赖。

本次通过官方 formatter 迁移两个定义中的 Fn 标注；30 个定义的 schema 保持不变。
消息 API、id/token 移除、时间回退、动画及原 COS/rsync 配置保持，原门禁未放宽。
本轮 181 个全定义、32 个公开定义、完整 strict（diagnostics 为空）、原四项 unit、
缺失/数字/旧非法时间三类 JS 渲染、immutable 安装和 Vite 构建通过。
实际页面验证 Try 消息出现及自动消失、Clear 动画结束后清空、刷新初始化，控制台无 warning/error。
长消息截断仍是既有 #53，不宣称本次修复；不新增验证脚本或类型例外。

### 历史：0.31 使用者需要注意

候选 `0.1.0-alpha.3` 配对正式 Calcit CLI / `@calcit/procs` `0.31.0`，
依赖已发布 UI `0.9.0-alpha.4`、Respo `0.17.0-alpha.4`、JS FFI `0.2.7`，
间接 Router 为 `0.9.0-alpha.3`。消费者需协调完整版本图并重新生成 JS；
不以 main、候选分支或 commit 替代发布 tag，不修改缓存或放宽 Caps strict。
0.30.1 使用者继续使用 0.0.x 维护线，本提交不等于新 tag 已发布。

三个定义的八处集合操作改用现有 Map/Set/List 接收者方法，保留消息 API、
id/token 删除、过滤与去重顺序、缺失/非法时间回退、动画和 Demo 事件。
`css-message` 按 `defstyle` 已声明的展开合同补齐 String 类型；CSS 规则不改。
原始 Enum 操作与真实开放消息字段保持兼容；不宣称 payload 已全部强类型化，
也不通过强转、关闭 proof audit 或预算例外绕过原门禁。

原完整 strict、全定义/公开 namespace、四项 unit、三类时间值 JS 渲染及构建保留。
COS 仅使用 action 内置 verify，PR 隔离前缀、生产 COS/rsync 路径不变。
历史迁移记录见 Git 历史与文末链接，不把旧版本验收数字当作本提交证据。

### 渲染回归检查

`yarn check:render` 从当前 Snapshot 临时生成 JavaScript，实际渲染缺失时间、
数字时间和旧格式非法时间的消息。检查保留原有时间回退为 `0` 的行为，
防止时间读取函数与局部变量同名时产生 JavaScript 初始化顺序异常。
仅生成代码位于 `.calcit/`，执行后自动清理。直接使用编译器已生成的真实 renderer，
不再复制或改写 Snapshot、注入测试 helper，也不修改 reload 入口。

### Usages

Public APIs:

```cirru.no-check
respo-message.action/message-action?

respo-message.action/create

respo-message.action/clear

respo-message.action/remove-one

respo-message.action/dict

respo-message.updater/update-messages

respo-message.comp.messages/comp-messages
```

To mount component and show a message, by default it shows for 4 seconds:

```cirru.no-check
comp-messages (:messages store)
  {} $ :bottom? true
  fn (info d!)
    d! $ :: action/remove-one info
```

```cirru.no-check
dispatch! $ :: action/create $ {} (:text |hello) (:token |xxx)

dispatch! $ :: action/remove-one $ {} (:token |xxx)
```

Messages can be removed with `:id` or `:token`, where `:token` is what you can generate.

### 开发与验证

消息 Map 仍允许异构数据；创建 payload 经原有 Tag-key Map 解码，DOM 动画沿用
JS FFI 的运行时宿主检查，不添加类型断言或默认值。长消息截断是既有
[#53](https://github.com/Respo/respo-message.calcit/issues/53)，本迁移不宣称修复。

提交前运行：

```bash
caps --ci --strict
caps verify --toolchain
yarn install --immutable
calcit calcit.cirru --check-only --all-defs
calcit fix --workflow strict --verify
calcit calcit.cirru --check-only --ns 'respo-message.$meta' --ns respo-message.action --ns respo-message.comp.container --ns respo-message.comp.message --ns respo-message.comp.messages --ns respo-message.config --ns respo-message.main --ns respo-message.schema --ns respo-message.updater --summary-only
calcit calcit.cirru analyze weak-types --only coverage --summary-only
calcit calcit.cirru js
yarn check:unit
yarn check:render
yarn check:deprecated
yarn vite build --base=./
```

Respo 事件 handler 和 `dispatch!` 接收单一 Enum；示例的
`respo-message.main/next-store-of` 提取 tag/payload，再调用
`update-messages` 既有五参数接口。集成时保持这条边界。
`dispatch!` 与 `next-store-of` 的 op 参数现声明为 `Enum`，不再接受整个 Dynamic。
演示入口明确为 JS/browser。旧消息 Map 的可缺失时间与 token 兼容行为仍保留，
不把模块升级宣称为业务消息模型的完整类型化。

### License

MIT

### 中文说明

本模块为 Calcit/Respo 应用提供消息组件及对应 updater。项目使用 canonical
`calcit.cirru`，Calcit 与 `@calcit/procs` 按上文保持精确配对，并固定到已发布的
Respo UI tag；当前候选的精确配对见开头。

Demo 前端资源使用正式 COS action v1.2.0，通过 `public-base-url` 启用内置逐文件
校验，不另加上传验证脚本。PR CDN 路径按 PR/run/attempt 隔离，同一 PR 或生产
分支任务排队执行；生产 COS 前缀和网页 rsync 路径不变。
发布依赖升级及验证范围见[迁移记录](history/20261005-published-alpha6.md)和 [alpha.16 记录](history/20261007-alpha16.md)。
Yarn 已移除旧 runtime 的版本级发布时间例外，使用全局安全默认配置，不新增放行项。

`dev?` 明确声明为 Bool，环境探测集中在返回 Bool 的 `detect-dev?` FFI 边界，
不再把布尔值声明为函数或在值初始化中使用 `unsafe-coerce`。保留浏览器关闭调试、
Node 仅在 `release=true` 时关闭调试的原行为；当前迁移保留既有宿主合同，
不新增测试或验证脚本。
