#!/usr/bin/env sh
set -eu

for path in schemas/scene.schema.json schemas/run_result.schema.json schemas/failure_bundle.schema.json mocks/scene.json mocks/run_result.json mocks/failure_bundle.json; do
  test -f "$path" || { echo "Missing required file: $path" >&2; exit 1; }
done

echo "Real2Sim Lab contracts and mocks are ready."
