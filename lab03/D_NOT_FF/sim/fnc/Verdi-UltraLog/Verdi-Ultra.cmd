simSetSimulator "-vcssv" -exec "./simv" -args
debImport "-sv" "-dbdir" "./simv.daidir" "-f" "run.f"
wvCreateWindow
wvOpenFile -win $_nWave2 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab03/D_NOT_FF/sim/fnc/wave.fsdb}
srcDeselectAll -win $_nTrace1
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench"
schSelect -win $_nSchema4 -inst "u_d_not_ff"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab03/D_FF/sim/fnc/test.fsdb}
schSelect -win $_nSchema4 -inst "u_d_not_ff"
schSelect -win $_nSchema4 -inst "u_d_not_ff"
wvAddSignal -win $_nWave3 "/testbench/q" "/testbench/d" "/testbench/n_rst" \
           "/testbench/clk"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetCursor -win $_nWave3 1.034715 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
wvSelectGroup -win $_nWave3 {G2}
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 1)}
wvSetPosition -win $_nWave3 {("G2" 1)}
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G2" 1)}
wvSetPosition -win $_nWave3 {("G3" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 1)}
wvSetPosition -win $_nWave3 {("G3" 1)}
wvSetCursor -win $_nWave3 21.611948 -snap {("G3" 0)}
wvZoomAll -win $_nWave3
wvZoomAll -win $_nWave3
wvZoomAll -win $_nWave3
wvZoomAll -win $_nWave3
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 15.093556 -snap {("G1" 2)}
wvOpenFile -win $_nWave3 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab03/D_NOT_FF/sim/fnc/test.fsdb}
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
wvZoom -win $_nWave3 21.358806 21.643590
wvZoomAll -win $_nWave3
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvTpfCloseForm -win $_nWave3
wvGetSignalClose -win $_nWave3
wvCloseWindow -win $_nWave3
wvCloseWindow -win $_nWave2
srcHBSelect "testbench.u_d_not_ff" -win $_nTrace1
srcSetScope "testbench.u_d_not_ff" -delim "." -win $_nTrace1
srcHBSelect "testbench.u_d_not_ff" -win $_nTrace1
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench.u_d_not_ff"
wvSetPosition -win $_nWave5 {("G1" 0)}
wvOpenFile -win $_nWave5 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab03/D_NOT_FF/sim/fnc/test.fsdb}
schSetOptions -win $_nSchema6 -pinName on
wvSelectGroup -win $_nWave5 {G1}
schSetOptions -win $_nSchema6 -portName on
schSetOptions -win $_nSchema6 -instName on
schSetOptions -win $_nSchema6 -localNetName on
schSetOptions -win $_nSchema6 -completeName on
schSetOptions -win $_nSchema6 -parameterList on
schSetOptions -win $_nSchema6 -highContrastMode on
schSelect -win $_nSchema6 -inst "d_not_ff:Always0:17:27:Reg"
schAddSelectedToWave -win $_nSchema6 -clipboard
wvDrop -win $_nWave5
wvSetCursor -win $_nWave5 1.666416 -snap {("G2" 0)}
wvZoomAll -win $_nWave5
wvSelectGroup -win $_nWave5 {G2}
wvSelectSignal -win $_nWave5 {( "G1" 4 )} 
wvSetPosition -win $_nWave5 {("G2" 0)}
wvMoveSelected -win $_nWave5
wvSetPosition -win $_nWave5 {("G2" 1)}
wvSetPosition -win $_nWave5 {("G2" 1)}
schFit -win $_nSchema6
schDeselectAll -win $_nSchema6
schSelect -win $_nSchema6 -port "q"
schAddSelectedToWave -win $_nSchema6 -clipboard
wvDrop -win $_nWave5
wvSelectSignal -win $_nWave5 {( "G2" 1 )} 
wvCut -win $_nWave5
wvSetPosition -win $_nWave5 {("G3" 0)}
wvSetPosition -win $_nWave5 {("G2" 1)}
wvSelectSignal -win $_nWave5 {( "G1" 1 )} 
wvSetPosition -win $_nWave5 {("G1" 1)}
wvSetPosition -win $_nWave5 {("G1" 2)}
wvMoveSelected -win $_nWave5
wvSetPosition -win $_nWave5 {("G1" 2)}
schDeselectAll -win $_nSchema6
wvZoomAll -win $_nWave5
wvSelectSignal -win $_nWave5 {( "G1" 2 )} 
wvSelectSignal -win $_nWave5 {( "G2" 1 )} 
wvSelectGroup -win $_nWave5 {G3}
wvSetPosition -win $_nWave5 {("G3" 0)}
wvSetPosition -win $_nWave5 {("G2" 0)}
wvSetPosition -win $_nWave5 {("G1" 3)}
wvSetPosition -win $_nWave5 {("G1" 2)}
wvMoveSelected -win $_nWave5
wvSetPosition -win $_nWave5 {("G1" 2)}
wvSetPosition -win $_nWave5 {("G2" 1)}
wvSetPosition -win $_nWave5 {("G2" 1)}
wvSetPosition -win $_nWave5 {("G1" 2)}
wvSelectGroup -win $_nWave5 {G1}
wvRenameGroup -win $_nWave5 {G1} {CLK & N_RST}
wvSelectGroup -win $_nWave5 {CLK & N_RST/G3}
wvRenameGroup -win $_nWave5 {CLK & N_RST/G3} {D_IN}
wvSelectGroup -win $_nWave5 {G2}
wvRenameGroup -win $_nWave5 {G2} {D_OUT}
wvSetCursor -win $_nWave5 18.652580 -snap {("G3" 0)}
wvZoomAll -win $_nWave5
verdiWindowResize -win $_Verdi_1 "241" "106" "1393" "824"
debExit
