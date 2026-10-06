#!/usr/bin/env sh
set -eu

python3 - <<'PY'
import json
from pathlib import Path

checks = {
    "mocks/scene.json": {"scenario_id", "robot", "obstacles", "source", "confidence"},
    "mocks/run_result.json": {"run_id", "scenario_id", "status", "metrics", "completion_time_s", "simulation_seed", "parameters"},
    "mocks/failure_bundle.json": {"failure_id", "timestamp", "failure_type", "robot_pose", "robot_velocity", "commands", "sensor_data", "snapshot_reference"},
}
for filename, required in checks.items():
    data = json.loads(Path(filename).read_text())
    missing = required - data.keys()
    if missing:
        raise SystemExit(f"{filename} missing: {', '.join(sorted(missing))}")
    print(f"OK: {filename}")
print("Mock contract demo passed.")
PY
