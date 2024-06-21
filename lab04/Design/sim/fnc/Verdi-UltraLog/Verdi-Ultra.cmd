simSetSimulator "-vcssv" -exec "./simv" -args
debImport "-sv" "-dbdir" "./simv.daidir" "-f" "run.f"
wvCreateWindow
wvOpenFile -win $_nWave2 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab04/Design/sim/fnc/wave.fsdb}
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench"
schSetOptions -win $_nSchema4 -portName on
schSetOptions -win $_nSchema4 -pinName on
schSetOptions -win $_nSchema4 -instName on
schSetOptions -win $_nSchema4 -localNetName on
schSetOptions -win $_nSchema4 -completeName on
schSetOptions -win $_nSchema4 -parameterList on
schSetOptions -win $_nSchema4 -highContrastMode on
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab04/Design/sim/fnc/test.fsdb}
schSelect -win $_nSchema4 -inst "u_my_design"
wvSetCursor -win $_nWave3 1.682526
wvAddSignal -win $_nWave3 "/testbench/Cout\[4:0\]" "/testbench/out3\[4:0\]" \
           "/testbench/out2\[4:0\]" "/testbench/out1\[4:0\]" \
           "/testbench/Cin2\[4:0\]" "/testbench/Cin1\[4:0\]" "/testbench/sel" \
           "/testbench/data2\[4:0\]" "/testbench/data1\[4:0\]" \
           "/testbench/n_rst" "/testbench/clk"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetCursor -win $_nWave3 2.112038 -snap {("G1" 9)}
wvZoomAll -win $_nWave3
debExit
