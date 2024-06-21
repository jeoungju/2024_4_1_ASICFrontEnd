debImport "-sv" "-f" "run.f"
srcHBSelect "testbench.u_top" -win $_nTrace1
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/hw_11/sim/fnc/test.fsdb}
schSelect -win $_nSchema3 -inst "u_top"
schPushViewIn -win $_nSchema3
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/testbench"
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testbench/A\[15:0\]} \
{/testbench/B\[15:0\]} \
{/testbench/c_in} \
{/testbench/c_out} \
{/testbench/clk} \
{/testbench/n_rst} \
{/testbench/sum\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetCursor -win $_nWave2 2.402036 -snap {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testbench/A\[15:0\]} \
{/testbench/B\[15:0\]} \
{/testbench/c_in} \
{/testbench/c_out} \
{/testbench/clk} \
{/testbench/n_rst} \
{/testbench/sum\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 5.388224 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 42.392517 -snap {("G1" 4)}
wvZoomAll -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/testbench"
wvGetSignalSetScope -win $_nWave2 "/testbench"
wvGetSignalSetScope -win $_nWave2 "/testbench/u_top"
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testbench/A\[15:0\]} \
{/testbench/B\[15:0\]} \
{/testbench/c_in} \
{/testbench/c_out} \
{/testbench/clk} \
{/testbench/n_rst} \
{/testbench/sum\[15:0\]} \
{/testbench/u_top/A_d\[15:0\]} \
{/testbench/u_top/B_d\[15:0\]} \
{/testbench/u_top/c_in_d} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 9 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testbench/A\[15:0\]} \
{/testbench/B\[15:0\]} \
{/testbench/c_in} \
{/testbench/c_out} \
{/testbench/clk} \
{/testbench/n_rst} \
{/testbench/sum\[15:0\]} \
{/testbench/u_top/A_d\[15:0\]} \
{/testbench/u_top/B_d\[15:0\]} \
{/testbench/u_top/c_in_d} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 9 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 21.043151 -snap {("G2" 0)}
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
debReload
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 44.271370 -snap {("G1" 7)}
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetRadix -win $_nWave2 -format UDec
debExit
