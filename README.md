
## Respo Message for Calcit

> Message component for Respo apps.

Demo http://repo.respo-mvc.org/message.calcit/

### 0.4.0 候选的移除回调

`comp-messages` 与 `comp-message` 的移除回调接收两个参数，即 `(info d!)`。
如果旧回调只声明了 `info`，请补上第二个参数。分发函数按宿主的 `dispatch-op` 类型槽检查，
回调结果仍会被忽略。

`info` 仍是 Tag 键 Map，包含 `:index`、`:time`，以及存在且非 nil 的 `:id`、`:token`。
后两者保留旧数据的值类型。原排序、点击删除和动画保持。

### 历史 0.3.1 配对

CLI / `@calcit/procs` 同步正式 **0.35.1**，UI **0.15.1**、Respo **0.19.4**、
JS-FFI **0.2.13** / 传递 Router **0.12.1** 需统一精确图并重新生成 JS。
相对已合并 #71 main，Snapshot、原测试/工作流/门禁和部署路径保持。
已有 `with-present` 泛型关系和受检 CSS union 保留；消息 ID/token/payload 的
真实开放边界不伪造为有限 union。`AnyEnum` 沿用 #71 名称，不声称边界已完全类型化。
本候选不改变删除、排序、动画、wire、存档或 HUD 行为，精确验收结果见 PR / main CI。

### 历史 0.3.0 配对

CLI / `@calcit/procs` 同步正式 **0.35.0**，UI **0.15.0**、Respo **0.19.3**、
JS-FFI **0.2.12** / 传递 Router **0.12.0** 需统一精确图并重新生成 JS。
`with-present` 的类型改为泛型 `Map Tag V -> Map Tag V`，不再主动擦除 V；
直接调用该 helper 时，异构值应有共同的 union 或真实开放值上下文。
因此按 minor 发布；消息组件、删除优先级、排序、时间回退、动画与 wire 行为保持。

helper 的函数体不变，三处显式 schema Dynamic 被 V 贯穿；同一个受检 CSS union
调用的静态结果精确保持 `Map Tag InlineStyleValue`。实际消息 ID/token 仍是开放值，
原 payload 正确保持 `Map Tag Dynamic`，不宣称所有消息数据已闭合。
其余源码只由官方 formatter 迁移类型写法；原测试、门禁、预算与部署路径保留。
本轮精确检查结果见 PR；历史数字不代表本轮验收。

### 0.2.1 历史配对


候选 **0.2.1** 配对正式 Calcit CLI / JS 运行时 **0.34.2**，对齐已发布 UI **0.14.1**、Respo **0.19.2**、JS-FFI **0.2.10** 和传递 Router **0.11.2**。消费者需要严格安装完整图并重新生成 JS；0.2.1 尚未发布。本次不改变消息样式、派发或 wire 合同。

Demo 一处旧 `=< 16 nil` 改为同宽 `space-x 16`，官方 CLI 反向恢复后与原 Snapshot 字节一致：其他代码、schema、原测试与示例保持。187 个可达定义、33 个公开定义、完整 strict、原六项 unit、原 JS 时间/falsey-token/样式回归和构建通过，dynamic-method/deprecated 为零，未放宽门禁或增加 checker。实际 Chrome 已验证原 Try/Clear、点击消息删除、原 2 秒自动删除、显示样式及刷新初始化，控制台无错误，间距保持 16px。精确 Linux CI 与隔离 COS 预览仍待验收。

从 0.1.x 升级时仍需注意已发布 0.2.0 的样式合同：消息 `:style` 入口改为校验 `Map Tag respo-ui.schema/InlineStyleValue`：键为 Tag，值为 String、Number、Tag 或 `Option StyleValue`。整个 `:style` 缺省或 nil 仍为空 Map；单个属性的 some 会解包、none 不渲染。原来开放 Map 中的 Bool、集合、函数及单属性 nil 不符合这个合同，会在读取样式时更早拒绝；旧 nil 属性请改为 `Option :none`。0.2.0 因这项公开输入收紧升级了 minor；0.2.1 不扩大 union 容纳无效 CSS 值。

公开消息 Map 与 token/ID 优先级、nil/false token 按 ID 删除、缺失或非法时间回退、消息排序、动画、派发及页面 `hud!` 保持。真实异构消息及状态边界继续检查，不把整条消息伪装为有限 union。名义消息模型与回调全面改造不属于本次变更。

复用原附带 unit 和 JS 渲染 runner，新增一个样式解码 unit，并在原 JS runner 验证标量/some/none 的实际 HTML 与非法 Bool 拒绝；不增加新 checker、强转、类型预算或兼容开关。0.2.0 当时的 188 个定义、完整 strict、6 项 unit（原 5 + 新 1）、原时间回退和 nil/false 回归、样式回归及构建在本地通过。原门禁、部署路径与一小时 npm 包龄策略保持；COS 只用 action 内置 verify。本地 JS 渲染不代表已完成浏览器动画验收。

### 渲染回归检查

`yarn check:render` 从当前 Snapshot 临时生成 JavaScript，实际渲染缺失时间、
数字时间和旧格式非法时间的消息。检查保留原有时间回退为 `0` 的行为，
防止时间读取函数与局部变量同名时产生 JavaScript 初始化顺序异常。
同一 runner 另检查 nil/false token 只删除指定 ID，以及 nil/false ID 的实际列表渲染；附带 unit 保留同一误删回归。仅生成代码位于 `.calcit/`，执行后自动清理。直接使用编译器已生成的真实 renderer，
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
