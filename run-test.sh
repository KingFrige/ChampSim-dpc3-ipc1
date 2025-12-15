#!/bin/bash

li1_prefs=("bip" "d_jolt" "eip" "fnlmma" "mana" "next_line" "no" "pips" "tap")
for ((i = 0; i < ${#li1_prefs[@]}; i++)); do
  pref=${li1_prefs[$i]}
  ./build_champsim.sh bimodal ${pref} no no no lru 1
  ./run_champsim.sh bimodal-${pref}-no-no-no-lru-1core 1 10 ../traces/ipc1_public/server_024.champsimtrace.xz
done


li1_prefs=("barca" "bip" "d_jolt" "eip" "fnlmma" "mana" "next_line" "no" "pips" "tap")
for ((i = 0; i < ${#li1_prefs[@]}; i++)); do
  pref=${li1_prefs[$i]}
  ./build_champsim.sh bimodal ${pref} no no no lru 2
  ./run_2core.sh bimodal-${pref}-no-no-no-lru-2core 1 10 0 ../traces/spec2k17/602.gcc_s-1850B.champsimtrace.xz ../traces/spec2k17/602.gcc_s-1850B.champsimtrace.xz
done



l1d_prefs=("pangloss" "bingo" "mlop" "team_12" "T_SKID190509.021" "sangam" "ipcp" "berti")
for ((i = 0; i < ${#l1d_prefs[@]}; i++)); do
  pref=${l1d_prefs[$i]}
  ./build_champsim.sh bimodal no ${pref} no no lru 2
  ./run_2core.sh bimodal-no-${pref}-no-no-lru-2core 1 10 0 ../traces/spec2k17/602.gcc_s-1850B.champsimtrace.xz ../traces/spec2k17/602.gcc_s-1850B.champsimtrace.xz
done



l2c_prefs=("pangloss" "team_12" "spp.021" "sangam" "ipcp" "berti")
for ((i = 0; i < ${#l2c_prefs[@]}; i++)); do
  pref=${l2c_prefs[$i]}
  ./build_champsim.sh bimodal no no ${pref} no lru 2
  ./run_2core.sh bimodal-no-no-${pref}-no-lru-2core 1 10 0 ../traces/spec2k17/602.gcc_s-1850B.champsimtrace.xz ../traces/spec2k17/602.gcc_s-1850B.champsimtrace.xz
done




llc_prefs=("sangam" "ipcp" "team_12")
for ((i = 0; i < ${#llc_prefs[@]}; i++)); do
  pref=${llc_prefs[$i]}
  ./build_champsim.sh bimodal no no no ${pref} lru 2
  ./run_2core.sh bimodal-no-no-no-${pref}-lru-2core 1 10 0 ../traces/spec2k17/602.gcc_s-1850B.champsimtrace.xz ../traces/spec2k17/602.gcc_s-1850B.champsimtrace.xz
done
