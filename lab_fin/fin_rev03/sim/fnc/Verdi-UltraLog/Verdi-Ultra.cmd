debImport "-sv" "-f" "run.f"
srcHBSelect "testbench" -win $_nTrace1
srcHBSelect "testbench.u_top" -win $_nTrace1
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench"
schSelect -win $_nSchema3 -inst "u_top"
schPushViewIn -win $_nSchema3
schZoomIn -win $_nSchema3 -pos 171336 33118
schZoomIn -win $_nSchema3 -pos 171216 32996
schZoomOut -win $_nSchema3 -pos 156942 29448
schZoomOut -win $_nSchema3 -pos 156941 29447
schZoomOut -win $_nSchema3 -pos 156940 29447
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab_fin/fin_rev03/sim/fnc/test.fsdb}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/testbench"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testbench/clk} \
{/testbench/i\[31:0\]} \
{/testbench/n_rst} \
{/testbench/r_addr\[10:0\]} \
{/testbench/xn_data\[7:0\]} \
{/testbench/yn_data\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testbench/clk} \
{/testbench/i\[31:0\]} \
{/testbench/n_rst} \
{/testbench/r_addr\[10:0\]} \
{/testbench/xn_data\[7:0\]} \
{/testbench/yn_data\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvGetSignalClose -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetRadix -win $_nWave2 -2Com
wvBusWaveform -win $_nWave2 -analog
wvSetPosition -win $_nWave2 {("G1" 6)}
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetRadix -win $_nWave2 -2Com
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvBusWaveform -win $_nWave2 -analog
wvSetPosition -win $_nWave2 {("G1" 6)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 15561.481481 -snap {("G1" 5)}
wvZoomAll -win $_nWave2
debExit
