
## Respo Message for Calcit

> Message component for Respo apps.

Demo http://repo.respo-mvc.org/message.calcit/

### 渲染回归检查

`yarn check:render` 从当前 Snapshot 临时生成 JavaScript，实际渲染缺失时间、
数字时间和旧格式非法时间的消息。检查保留原有时间回退为 `0` 的行为，
防止时间读取函数与局部变量同名时产生 JavaScript 初始化顺序异常。
临时 Snapshot 和生成代码位于 `.calcit/`，执行后自动清理。

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

### 发布工具链

`0.0.36` 使用者影响：UI 升级为正式 `0.7.40`，与 Reel `0.6.38` 对齐，
避免 Caps strict 拒绝混用旧 UI `0.7.39`；传递依赖 Router 为 `0.8.35`。
Calcit/procs 仍为正式 `0.30.0`，模块 Snapshot、消息 API、数据格式与部署路径
均不修改。以下 `0.0.35` 段落保留上次迁移的历史验证范围。

使用者影响：候选 `0.0.35` 配对正式 Calcit / `@calcit/procs` `0.30.0`，消费者需同步应用工具链。继续使用已发布的正式 UI 依赖图。创建消息的 payload 明确检查为 Tag key 的 Map；`:text`、`:token`、`:style` 等既有字段和任意附加 Tag 字段保留，非法 payload 提前报错，不依靠合并原语间接失败。旧消息缺失/非法时间回退为 `0`、按 token/id 删除及清空行为不变。消息值仍允许异构数据，不宣称整个模型已完全类型化。

demo 的挂载点改用 Respo 自带的 `query-selector`，保留缺失节点时 unwrap 抛错的行为及宿主元素身份，不在应用中强转两个库的 DOM trait。renderer 使用准确回调契约，开放 dispatch 边界只接受实际 Enum；`:states` 的 cursor 和返回 store 使用实际 Map/List 检查而非类型断言。

项目使用 `calcit.cirru` / `deps.cirru`，CLI 与 `@calcit/procs` 固定为
已发布的 `0.30.0`，Node 24、Yarn 4.18.0 和 Vite 8.3.1。
`0.0.35` 使用正式 UI `0.7.39`、Respo `0.16.120`、JS-FFI `0.2.3`，
传递依赖 Router `0.8.34`；当前 `0.0.36` 的依赖升级见上文。
`lilac`/`memof` 已移除，消息 Map 的可选字段仍由显式 Option 处理。
既有单元测试使用内置 `calcit.test`。重复的类型预算脚本和配置已移除，
以严格检查作为正确性门禁；`weak-types` 仅提供覆盖率与旧 API 诊断，不冒充强制预算。

本轮将业务代码 13 处旧 Map 读取改为公开 `get` / Option，再还原原有 nil 语义，
不改写原字段默认值或真值判断。原测试中 4 处读取改为 `get` / `get-in` 解包，
保留原 4 项测试的标识、标签与断言；`gen-tag` 对已确认的 String 改用公开 `to-tag`。
原单元测试、JS 渲染检查、20 类消息值/错误对比、完整 strict 及构建均通过。
仍有 35 处 unresolved slot、14 个不完整定义，类型覆盖与原版相同，不声称零债务。
本轮没有新增测试、验证脚本、预算、编译器规则或 COS 配置。

提交前运行：

```bash
caps --ci --strict
caps verify --toolchain
yarn install --immutable
calcit calcit.cirru --check-only --all-defs
calcit calcit.cirru --check-only --ns respo-message.action --ns respo-message.comp.container --ns respo-message.comp.message --ns respo-message.comp.messages --ns respo-message.config --ns respo-message.main --ns respo-message.schema --ns respo-message.updater --summary-only
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
`calcit.cirru`，Calcit 与 `@calcit/procs` 保持正式 0.30.0 lockstep，并固定
到已发布的 Respo UI tag。

Demo 前端资源使用正式 COS action v1.2.0，通过 `public-base-url` 启用内置逐文件
校验，不另加上传验证脚本。PR CDN 路径按 PR/run/attempt 隔离，同一 PR 或生产
分支任务排队执行；生产 COS 前缀和网页 rsync 路径不变。
发布依赖升级及验证范围见[迁移记录](history/20261005-published-alpha6.md)和 [alpha.16 记录](history/20261007-alpha16.md)。
Yarn 已移除旧 runtime 的版本级发布时间例外，使用全局安全默认配置，不新增放行项。

`dev?` 明确声明为 Bool，环境探测集中在返回 Bool 的 `detect-dev?` FFI 边界，
不再把布尔值声明为函数或在值初始化中使用 `unsafe-coerce`。保留浏览器关闭调试、
Node 仅在 `release=true` 时关闭调试的原行为；当前迁移保留既有宿主合同，
不新增测试或验证脚本。
