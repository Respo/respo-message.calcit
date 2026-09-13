# Public Map values API / 使用公开 Map values API

## 中文

- 将消息列表从内部 `&map:vals` 迁移到公开且带泛型类型关系的 `vals`。
- 收紧 `comp-messages` 的消息元素为泛型参数，避免 `Dynamic` 擦除 `Map` 值与返回集合之间的类型关系。
- 为浏览器 entry 声明目标后端，并将发布版本推进到 `0.0.22`。

## English

- Replace the internal `&map:vals` call with the public, generically typed `vals` API.
- Make the message element in `comp-messages` generic so `Dynamic` no longer erases the relationship between map values and the resulting collection.
- Declare the browser target for the default entry and advance the release to `0.0.22`.
