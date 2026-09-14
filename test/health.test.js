import assert from "node:assert/strict";
import test from "node:test";
import { buildApp } from "../src/app.js";

test("健康接口返回固定状态", async () => {
  const server = buildApp().listen(0);
  const address = server.address();
  const response = await fetch(`http://127.0.0.1:${address.port}/health`);
  assert.equal(response.status, 200);
  assert.deepEqual(await response.json(), { status: "ok" });
  server.close();
});
