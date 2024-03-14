simSetSimulator "-vcssv" -exec "./simv" -args
debImport "-sv" "-dbdir" "./simv.daidir" "-f" "run.f"
debLoadSimResult /home1/std6/ASIC/lab02/not_gate/sim/fnc/wave.fsdb
wvCreateWindow
srcHBSelect "testbench.u_not_gate" -win $_nTrace1
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench"
srcHBSelect "testbench.u_not_gate" -win $_nTrace1
srcSetScope "testbench.u_not_gate" -delim "." -win $_nTrace1
srcHBSelect "testbench.u_not_gate" -win $_nTrace1
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 {/home1/std6/ASIC/lab02/not_gate/sim/fnc/wave.fsdb}
verdiDockWidgetSetCurTab -dock windowDock_nSchema_4
schSelect -win $_nSchema4 -inst "u_not_gate"
schSelect -win $_nSchema4 -inst "u_not_gate"
schAddSelectedToWave -win $_nSchema4 -clipboard
wvDrop -win $_nWave2
schDeselectAll -win $_nSchema4
schSelect -win $_nSchema4 -inst "u_not_gate"
schFit -win $_nSchema4
wvAddSignal -win $_nWave3 "/testbench/o" "/testbench/a"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 135.473907 -snap {("G2" 0)}
debExit
