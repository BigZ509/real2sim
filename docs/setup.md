# Setup

No production dependencies are required in Week 1. Clone the repository, then run:

```sh
./scripts/setup.sh
./scripts/run_demo.sh
```

The setup script checks that required project contracts and mock files exist. The demo script validates the mock JSON structure using Python's standard library. Later subsystem-specific dependencies belong in that subsystem's README and must remain optional for other contributors.

## Reset

Until runtimes are selected, reset means removing only locally generated, ignored artifacts such as `build/`, `install/`, `log/`, and `artifacts/`. Do not remove mock data or schemas.

## Known issues

No simulator, robot, camera pipeline, API, database, or dashboard runtime has been selected yet.
