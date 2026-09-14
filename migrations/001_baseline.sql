CREATE TABLE archive_records (
  record_id TEXT PRIMARY KEY,
  paragraph_id TEXT NOT NULL,
  version INTEGER NOT NULL,
  kind TEXT NOT NULL,
  source_digest TEXT NOT NULL,
  submitted_by TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL
);
