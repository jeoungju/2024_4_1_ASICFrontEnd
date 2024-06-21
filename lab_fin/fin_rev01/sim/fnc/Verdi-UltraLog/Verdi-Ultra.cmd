debImport "-sv" "-f" "run.f"
srcHBSelect "testbench.u_top" -win $_nTrace1
srcHBSelect "testbench.u_top" -win $_nTrace1
srcSetScope "testbench.u_top" -delim "." -win $_nTrace1
srcHBSelect "testbench.u_top" -win $_nTrace1
srcHBSelect "testbench.u_top" -win $_nTrace1
srcSetScope "testbench.u_top" -delim "." -win $_nTrace1
srcHBSelect "testbench.u_top" -win $_nTrace1
srcHBSelect "testbench.u_top" -win $_nTrace1
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench.u_top"
srcHBSelect "testbench" -win $_nTrace1
srcHBSelect "testbench" -win $_nTrace1
srcSetScope "testbench" -delim "." -win $_nTrace1
srcHBSelect "testbench" -win $_nTrace1
srcHBSelect "testbench.u_top" -win $_nTrace1
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench"
wvSetPosition -win $_nWave4 {("G1" 0)}
wvOpenFile -win $_nWave4 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/FINAL_PROJECT/sim/fnc/test.fsdb}
wvGetSignalOpen -win $_nWave4
wvGetSignalSetScope -win $_nWave4 "/testbench"
wvSetPosition -win $_nWave4 {("G1" 7)}
wvSetPosition -win $_nWave4 {("G1" 7)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/testbench/clk} \
{/testbench/i\[31:0\]} \
{/testbench/n_rst} \
{/testbench/r_addr\[10:0\]} \
{/testbench/start} \
{/testbench/xn_data\[7:0\]} \
{/testbench/yn_data\[7:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
}
wvSelectSignal -win $_nWave4 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave4 {("G1" 7)}
wvSetPosition -win $_nWave4 {("G1" 7)}
wvSetPosition -win $_nWave4 {("G1" 7)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/testbench/clk} \
{/testbench/i\[31:0\]} \
{/testbench/n_rst} \
{/testbench/r_addr\[10:0\]} \
{/testbench/start} \
{/testbench/xn_data\[7:0\]} \
{/testbench/yn_data\[7:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
}
wvSelectSignal -win $_nWave4 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave4 {("G1" 7)}
wvGetSignalClose -win $_nWave4
wvSelectSignal -win $_nWave4 {( "G1" 6 )} 
wvSelectSignal -win $_nWave4 {( "G1" 7 )} 
wvSelectSignal -win $_nWave4 {( "G1" 6 7 )} 
wvSetRadix -win $_nWave4 -2Com
wvBusWaveform -win $_nWave4 -analog
wvSetPosition -win $_nWave4 {("G1" 7)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 10540.299248 -snap {("G1" 6)}
debExit
