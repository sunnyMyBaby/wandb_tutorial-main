#!/bin/bash

unset TMUX

python3 test_sweep.py --team_name "yg-test" --project_name "wandb_test" --experiment_name "test_sweep_cnn" \
 --scenario_name "test_sweep_cnn" --sweep_worker_num 4