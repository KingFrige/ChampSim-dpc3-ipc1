#!/bin/bash

./build_champsim.sh bimodal fnlmma no no no lru 1 1

gdb --args ./bin/bimodal-fnlmma-no-no-no-lru-1core -warmup_instructions 1000000 -simulation_instructions 10000000  -traces ../traces/ipc1_public/server_024.champsimtrace.xz
