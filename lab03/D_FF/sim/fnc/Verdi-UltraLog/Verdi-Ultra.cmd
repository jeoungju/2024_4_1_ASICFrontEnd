simSetSimulator "-vcssv" -exec "./simv" -args
debImport "-sv" "-dbdir" "./simv.daidir" "-f" "run.f"
wvCreateWindow
wvOpenFile -win $_nWave2 \
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab03/D_FF/sim/fnc/wave.fsdb}
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
           {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab03/D_FF/sim/fnc/test.fsdb}
verdiWindowResize -win $_Verdi_1 "500" "102" "1155" "780"
verdiWindowResize -win $_Verdi_1 "371" "110" "1164" "786"
schSelect -win $_nSchema4 -inst "u_dff"
schSelect -win $_nSchema4 -inst "u_dff"
wvAddSignal -win $_nWave3 "/testbench/q" "/testbench/d" "/testbench/n_rst" \
           "/testbench/clk"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetCursor -win $_nWave3 0.698802 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 1.930024 -snap {("G1" 3)}
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSelectSignal -win $_nWave3 {( "G1" 2 4 )} 
wvSelectSignal -win $_nWave3 {( "G1" 2 3 4 )} 
wvSelectGroup -win $_nWave3 {G2}
wvSelectGroup -win $_nWave3 {G2}
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSelectGroup -win $_nWave3 {G2}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSelectGroup -win $_nWave3 {G2}
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetCursor -win $_nWave3 1.477467 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
wvSetPosition -win $_nWave3 {("G1/G2" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1/G2" 0)}
wvSetPosition -win $_nWave3 {("G1/G2" 1)}
wvSelectGroup -win $_nWave3 {G2}
wvSelectGroup -win $_nWave3 {G1}
wvRenameGroup -win $_nWave3 {G1} {CLK & N_RST}
wvSelectGroup -win $_nWave3 {CLK & N_RST/G2}
wvSelectSignal -win $_nWave3 {( "CLK & N_RST" 2 )} 
wvSelectGroup -win $_nWave3 {CLK & N_RST/G2}
wvRenameGroup -win $_nWave3 {CLK & N_RST/G2} {Input}
wvSelectGroup -win $_nWave3 {G2}
wvRenameGroup -win $_nWave3 {G2} {Output}
wvSetPosition -win $_nWave3 {("Output" 0)}
wvSetPosition -win $_nWave3 {("CLK & N_RST" 5)}
wvSetPosition -win $_nWave3 {("CLK & N_RST/Input" 1)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("CLK & N_RST/Input" 1)}
wvSetPosition -win $_nWave3 {("CLK & N_RST" 6)}
wvSetPosition -win $_nWave3 {("CLK & N_RST" 6)}
wvSetPosition -win $_nWave3 {("CLK & N_RST/Input" 1)}
verdiWindowResize -win $_Verdi_1 "362" "139" "1393" "824"
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 2.773438 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 15.515174 -snap {("Output" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
debExit
