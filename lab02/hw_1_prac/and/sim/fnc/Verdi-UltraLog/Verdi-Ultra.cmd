simSetSimulator "-vcssv" -exec "./simv" -args
debImport "-sv" "-dbdir" "./simv.daidir" "-f" "run.f"
wvCreateWindow
wvOpenFile -win $_nWave2 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab02/hw_1_prac/and/sim/fnc/wave.fsdb}
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench"
schSetOptions -win $_nSchema4 -portName on
schSetOptions -win $_nSchema4 -pinName on
schSetOptions -win $_nSchema4 -instName on
schSetOptions -win $_nSchema4 -localNetName on
schSetOptions -win $_nSchema4 -PGPin off
schSetOptions -win $_nSchema4 -completeName on
schSetOptions -win $_nSchema4 -PGPin on
schSetOptions -win $_nSchema4 -parameterList on
schSetOptions -win $_nSchema4 -highContrastMode on
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab02/hw_1_prac/and/sim/fnc/test.fsdb}
schSelect -win $_nSchema4 -inst "u_and_gate"
schSelect -win $_nSchema4 -inst "u_and_gate"
wvAddSignal -win $_nWave3 "/testbench/c" "/testbench/b" "/testbench/a"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetCursor -win $_nWave3 1.123936 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvSelectGroup -win $_nWave3 {G1}
wvSetCursor -win $_nWave3 19.360475 -snap {("G2" 0)}
debExit
