# Real2Sim Lab

Real2Sim Lab turns a real robot failure into a controlled simulation, runs variations of that scenario, and records results that guide a safer redeployment.

`Physical robot → failure logger → failure bundle / scene.json → Real2Sim engine → simulator → variation runner → results API → dashboard`

## Week 1 focus

This repository deliberately starts with architecture, versioned data contracts, and mock data. The simulator, robot platform, camera hardware, backend, database, and frontend are **TBD**. Each area can develop against the mock files without waiting for hardware or another service.

## MVP

The MVP uses one robot in a controlled tabletop or indoor scene with known dimensions. It reconstructs robot pose and simple obstacle geometry, replays one real failure, executes 10–30+ seeded variations, shows PASS/FAIL metrics, and retests one improved controller physically. It does not attempt general-purpose 3D reconstruction.

## Repository map

| Path | Purpose | Owner |
| --- | --- | --- |
| `robotics/` | ROS 2 integration, telemetry, robot description, failure capture | Robotics + Real2Sim Core |
| `perception/` | Calibration, pose/obstacle extraction, `scene.json` generation | Perception + Scene Extraction |
| `real2sim/` | Scene loading, simulation adapter, variation generation | Robotics + Real2Sim Core |
| `backend/`, `dashboard/` | Result API/storage and experiment/replay UI | Backend + Dashboard |
| `schemas/`, `mocks/`, `shared/` | Stable contracts and cross-team utilities | Shared |

Read [architecture.md](docs/architecture.md), [setup.md](docs/setup.md), and [team-roles.md](docs/team-roles.md) before starting work.

## Parallel development

1. Producers validate output against schemas before integration.
2. Consumers begin with `mocks/` and replace mocks only when the contract is stable.
3. Each feature branch targets one ownership area and enters `main` through a pull request.
4. Integrate at least weekly and preserve a known-good demo path.

## Quick start

No runtime stack is chosen yet. Inspect and validate the mock contracts first:

```sh
./scripts/setup.sh
./scripts/run_demo.sh
```

See [CONTRIBUTING.md](CONTRIBUTING.md) for collaboration rules.
