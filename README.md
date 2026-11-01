
## Respo Message for Calcit

> Message component for Respo apps.

Demo http://repo.respo-mvc.org/message.calcit/

### 使用者需要注意

候选 `0.1.1` 配对正式 Calcit CLI / `@calcit/procs` `0.32.1`，依赖正式 UI `0.10.0`、Respo `0.18.0`、JS-FFI `0.2.9`（传递 Router `0.9.0`）。消费者须协调完整精确图并重新生成 JS；直接构造上游 DomProps 的代码采用 Option 字段。旧 tag 不移动，0.1.1 发布前不引用 main/hash；0.30.1 使用者继续使用 0.0.x 维护线。

消息读取改为显式 Option 处理，保留原公开 updater 的 token/ID 优先级：有效 token 优先按组删除；nil/false token 仍走 ID 删除，0/空字符串不被当成缺失。ID 缺失/nil/false 继续按原 Map 的 nil key 处理，渲染 key 仍回退为空字符串，避免默认 nil token 误删整组或显式 nil ID 不能渲染。原本有这些特殊 Map key 的调用方不被静默改合同。

点击回调的 payload 会省略值为 nil 的 `:id` / `:token`，不再填入 nil；依赖 `.contains-key?` 区分“缺键”和“值为 nil”的集成需注意这一可见变化。`update-messages` 仍兼容旧回调携带的显式 nil/false。原 Enum 操作、消息过滤顺序、缺失/非法时间回退、动画、实际 JS HUD、存档与部署路径保持。

修复复用原附带 unit 和原 JS runner，只补真实回归，不增加 checker、强转、类型预算或兼容开关。完整 strict、全定义/公开 namespace、原 unit、时间回退渲染及构建门禁保留；COS 只用 action 内置 verify。原一小时 npm 新候选包龄不加豁免。历史验收不自动作为当前候选通过依据。

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
