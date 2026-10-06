# Team roles

## Role A — Robotics + Real2Sim Core

Owns physical robot wiring, ROS 2 nodes, teleoperation/navigation, telemetry, failure capture, scenario schema integration, simulator spawning, variation generation, batch running, and final hardware/simulation integration.

## Role B — Perception + Scene Extraction

Owns camera/depth input, calibration and coordinate frames, simple obstacle geometry, robot/environment pose estimation, `scene.json` production, and extraction accuracy measurement.

## Role C — Backend + Dashboard

Owns result ingestion, API/database design, mock run storage, dashboard/replay views, experiment history, graphing/comparison, packaging, and demo controls.

All roles share schema changes. Propose a contract change in a pull request with an updated mock and downstream impact note.
