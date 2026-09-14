import express from "express";

export function buildApp() {
  const app = express();
  app.disable("x-powered-by");
  app.get("/health", (_request, response) => response.json({ status: "ok" }));
  return app;
}
