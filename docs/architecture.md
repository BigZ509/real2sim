# Architecture

The pipeline is deliberately file-contract driven during the MVP:

1. The robot logger records a failure as `failure_bundle.json`.
2. Perception produces `scene.json` from calibrated camera/depth input and known scene dimensions.
3. The Real2Sim engine loads the scene and recreates it through a simulator adapter (TBD).
4. The variation runner changes declared parameters while retaining a seed for repeatability.
5. Results conform to `run_result.json` and are stored/exposed by the backend (implementation TBD).
6. The dashboard compares scenario runs and replays stored data (implementation TBD).

Schemas in `schemas/` are the integration boundary. Their matching examples in `mocks/` enable development before the physical robot, camera, simulator, or services are ready.

## MVP boundary

Support one physical robot, a controlled scene, pose, speed, robot dimensions, and rectangular obstacles. Save collision/timeout outcomes and basic metrics for 10–30+ variations. Simulator choice, robot platform, backend/frontend frameworks, database, and camera hardware remain TBD.

## Later, only after MVP

Denser reconstruction, more object classes, 100+ variations, lighting/noise randomization, root-cause clustering, a more realistic digital twin, and remote execution are stretch goals.
