# Contributing

## Working agreement

Mocks come first. Keep contracts stable, integrate every week, and do not break the known-good demo path. Every subsystem must document install, run, reset, and known issues in its README. Create recoverable backups before demo week.

## Branches and pull requests

`main` is the shared, reviewable integration branch. Create a short-lived feature branch, open a pull request into `main`, and merge only after review and contract validation.

Use a prefix that identifies the ownership area:

- `robotics/<topic>`
- `perception/<topic>`
- `backend/<topic>`
- `dashboard/<topic>`

Examples: `perception/scene-json-export` and `backend/mock-run-ingestion`.

## Pull request checklist

- Explain the input/output contract affected.
- Update schemas and mocks together when a shared contract changes.
- Keep unrelated changes out of the pull request.
- Document setup, run, reset, and known issues for any new subsystem behavior.
- Verify the demo script still succeeds.
