
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
  fn (info d!) (d! (:: action/remove-one info))
```

```cirru.no-check
dispatch! $ :: action/create $ {}
  :text |hello
  :token |xxx

dispatch! $ :: action/remove-one $ {} (:token |xxx)
```

Messages can be removed with `:id` or `:token`, where `:token` is what you can generate.

### 发布工具链

项目使用 `calcit.cirru` / `deps.cirru`，CLI 与 `@calcit/procs` 固定为
已发布的 `0.29.0-alpha.16`，Node 24、Yarn 4.18.0 和 Vite 8.3.1。
0.0.30 使用 UI alpha.5、Respo alpha.8、JS-FFI alpha.13，与 recollect 0.0.56 的依赖一致；
合并后需另行发布 0.0.30 标签，才能供下游使用。
`lilac`/`memof` 已移除，消息 Map 的可选字段仍由显式 Option 处理。
既有单元测试使用内置 `calcit.test`，类型预算不增加。

提交前运行：

```bash
caps --ci --strict
caps verify --toolchain
yarn install --immutable
calcit calcit.cirru --check-only
calcit calcit.cirru js
yarn check:unit
yarn check:deprecated
yarn vite build --base=./
```

Respo 事件 handler 和 `dispatch!` 接收单一 Enum；示例的
`respo-message.main/next-store-of` 提取 tag/payload，再调用
`update-messages` 既有五参数接口。集成时保持这条边界。

### License

MIT

### 中文说明

本模块为 Calcit/Respo 应用提供消息组件及对应 updater。项目使用 canonical
`calcit.cirru`，Calcit 与 `@calcit/procs` 保持 0.29.0-alpha.16 lockstep，并固定
到已发布的 Respo UI tag。

Demo 前端资源使用正式 COS action v1.2.0，通过 `public-base-url` 启用内置逐文件
校验，不另加上传验证脚本。PR CDN 路径按 PR/run/attempt 隔离，同一 PR 或生产
分支任务排队执行；生产 COS 前缀和网页 rsync 路径不变。
发布依赖升级及验证范围见[迁移记录](history/20261005-published-alpha6.md)和 [alpha.16 记录](history/20261007-alpha16.md)。
Yarn 仅允许已验证的两个精确新版本绕过发布时间隔离：
`@calcit/procs@0.29.0-alpha.16`、`@calcit/finger-vec@0.1.1`，其余依赖规则保持不变。

`dev?` 明确声明为 Bool，环境探测集中在返回 Bool 的 `detect-dev?` FFI 边界，
不再把布尔值声明为函数或在值初始化中使用 `unsafe-coerce`。保留浏览器关闭调试、
Node 仅在 `release=true` 时关闭调试的原行为；已有类型预算收紧到当前实测值，
不新增测试或验证脚本。
