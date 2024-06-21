debImport "-f" "run_pre.f"
wvCreateWindow
wvOpenFile -win $_nWave2 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab12/sim/pre/test_pre.fsdb}
debExit
