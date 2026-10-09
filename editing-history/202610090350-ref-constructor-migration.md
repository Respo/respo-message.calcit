# Ref 构造改用 `ref` / `defref`

## 改动

- Calcit 0.29 起 `ref` / `defref` 是首选的 Ref 构造名（calcit-lang/calcit#1457），`atom` / `defatom` 将在 0.30 退场。
- 用 Calcit 0.29.0-alpha.19 运行 `calcit calcit.cirru fix --rule core-ref-constructor-v1 --include-attached`，把 `respo-message.main/*store` 的 `defatom` 改为 `defref`，共 1 处，全部为 machine-applicable，没有 `requires-review`。
- 两组名字由读取器解析为同一个内建实现，运行时行为与 Ref 身份不变。
- README 与文档中没有旧名需要更新；`history/` 与 `editing-history/` 中的旧记录保持原样。

## 验证

- 应用后再次预览为 `:changed false`，`calcit calcit.cirru edit format` 无差异。
- 按 CI 步骤运行 `--check-only`、`calcit js`、`check-public`、`analyze` 系列检查、upgrade baseline、`yarn check:unit`（4/4）、`yarn check:render`、`yarn check:deprecated` 与 `yarn vite build`，均通过。
