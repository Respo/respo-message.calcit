
## Respo Message for Calcit

> Message component for Respo apps.

使用者影响：`0.0.39` 维护候选配对已发布 UI `0.8.1`、Respo `0.16.126`、
JS-FFI `0.2.6` 及传递 Router `0.8.38`，CLI/runtime 保持正式 `0.30.1`。
应用需协调直接/传递依赖，不能只提高根 pin 或放宽 Caps strict。消息 Map、id/token
删除、时间回退、公开签名、动画与页面错误显示路径保持；仅修正附带示例的旧写法和
明确的配置/CSS 类名类型，不将开放消息数据伪装成闭合 Struct。

独立 `maintenance/0.30.1` 从正式 `0.0.38` 建立，不回退较新 main；维护线及其 PR
只检查和构建，PR 保存相对路径 artifact，不上传 COS 或 rsync，不部署 Demo、不发布 npm。
原 unit/真实 JS 渲染回归保留，示例通过现有 CLI 验收，不新增测试框架或验证脚本。
候选未完成门禁与实际浏览器验收前不可当作已发布依赖。

Demo http://repo.respo-mvc.org/message.calcit/

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

### 发布工具链

`0.0.38` 候选使用者注意：CLI / `@calcit/procs` 成对固定为正式 `0.30.1`，
依赖使用已发布 UI `0.8.0`、Respo `0.16.124`、JS-FFI `0.2.5`，传递 Router `0.8.37`。
应用中的其他模块也必须请求一致的正式图；不要只改根版本、混用旧 alpha 图或放宽
Caps strict。继续使用 Respo 0.16 兼容接口，不切换 0.17 的破坏性 dispatch API。
UI 0.8 的基础样式更新会随依赖带入，Demo 按钮外观可能与 UI 0.7 不同；
本模块没有额外改写消息 CSS。

消息 Map、id/token 删除、缺失/非法时间回退与正常动画时序不变。淡入淡出效果将三处
DOM 强转替换为 JS-FFI 已有的 `element-host` 运行时检查：非法宿主或缺失父元素会
明确抛错，不静默跳过。效果工厂的返回值明确为 `respo.schema/Effect`，参数是泛型
消息身份值、Number 索引与 Bool 方向；公共组件已有的索引/方向行为不改。

原 4 项 unit 和 3 类时间值 JS 渲染断言保留，不新增防御性测试表、迁移适配层、
验证脚本或预算。JS 回归只编译 canonical Snapshot，不再为暴露 renderer 临时改写
Snapshot。完整 strict/preflight 和原 COS 内置校验保留，部署路径不变。
局部不再直接使用 unsafe，不代表开放消息 Map、回调与框架 FFI 边界已全部类型化。

正式配对已在 [Linux CI](https://github.com/Respo/respo-message.calcit/actions/runs/39575511496)
通过自身 Caps strict 图、不可变 Yarn、完整 strict、全定义 181/181、公开定义 32/32、
原 unit 4/4 及三类时间值 JS 渲染。该精确公开构建的真实 Demo 通过初始消息、Try、
点击移除、Clear、多消息、自动消失和刷新回归，console warning/error 为空。
长消息视觉截断在原 0.0.37 同环境中也复现，单独记录为
[#53](https://github.com/Respo/respo-message.calcit/issues/53)，不是本次 DOM 类型改动的修复项。
上述不替代真实下游项目的发布图集成；当前仍为未合并、未部署、未发布的候选。

#### 0.30.1-alpha.4 历史记录

`0.0.37` 使用 CLI/runtime `0.30.1-alpha.4`、UI `0.7.41`、Respo `0.16.122`、
JS-FFI `0.2.3`，传递 Router `0.8.36`。该版本为历史预发布工具链配对，
不能作为正式 0.30.1 的验收声明；0.30.0 消费者原配对为 `0.0.36`。

#### 0.30.0 历史迁移记录

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
Respo UI tag；当前 0.0.38 候选使用正式 CLI/runtime 0.30.1，历史 alpha 配对见上文。

Demo 前端资源使用正式 COS action v1.2.0，通过 `public-base-url` 启用内置逐文件
校验，不另加上传验证脚本。PR CDN 路径按 PR/run/attempt 隔离，同一 PR 或生产
分支任务排队执行；生产 COS 前缀和网页 rsync 路径不变。
发布依赖升级及验证范围见[迁移记录](history/20261005-published-alpha6.md)和 [alpha.16 记录](history/20261007-alpha16.md)。
Yarn 已移除旧 runtime 的版本级发布时间例外，使用全局安全默认配置，不新增放行项。

`dev?` 明确声明为 Bool，环境探测集中在返回 Bool 的 `detect-dev?` FFI 边界，
不再把布尔值声明为函数或在值初始化中使用 `unsafe-coerce`。保留浏览器关闭调试、
Node 仅在 `release=true` 时关闭调试的原行为；当前迁移保留既有宿主合同，
不新增测试或验证脚本。
