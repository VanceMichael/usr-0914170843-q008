# 论辩引文异议归档所

该后端用于整理引文出处、释义版本、嘉宾确认和异议记录。协议示例位于 `contracts/record.schema.json`，数据库基线位于 `migrations`，应用入口由 `src/app.js` 统一装配。

执行 `npm ci && npm test` 可运行测试。`docker compose up --build` 启动应用和 PostgreSQL，服务通过 `GET /health` 暴露探活状态。
