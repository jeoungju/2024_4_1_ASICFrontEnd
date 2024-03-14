simSetSimulator "-vcssv" -exec "./simv" -args
debImport "-sv" "-dbdir" "./simv.daidir" "-f" "run.f"
debLoadSimResult /home1/std6/ASIC/lab02/hw_3/mux/sim/fnc/wave.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "277" "95" "1123" "787"
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
wvOpenFile -win $_nWave3 {/home1/std6/ASIC/lab02/hw_3/mux/sim/fnc/wave.fsdb}
schSelect -win $_nSchema4 -inst "u_mux"
wvAddSignal -win $_nWave3 "/testbench/out\[1:0\]" "/testbench/sel\[1:0\]" \
           "/testbench/d\[1:0\]" "/testbench/c\[1:0\]" "/testbench/b\[1:0\]" \
           "/testbench/a\[1:0\]"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetCursor -win $_nWave3 3.233734 -snap {("G1" 3)}
wvZoomAll -win $_nWave3
verdiWindowResize -win $_Verdi_1 "277" "95" "1388" "857"
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSelectGroup -win $_nWave3 {G2}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1/G2" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1/G2" 0)}
wvSetPosition -win $_nWave3 {("G1/G2" 1)}
wvSelectGroup -win $_nWave3 {G2}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1/G2" 1)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1/G2" 1)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1/G2" 1)}
wvSelectGroup -win $_nWave3 {G1}
wvRenameGroup -win $_nWave3 {G1} {Input}
wvSelectGroup -win $_nWave3 {Input/G2}
wvRenameGroup -win $_nWave3 {Input/G2} {sel}
wvSelectGroup -win $_nWave3 {Input/G2}
wvRenameGroup -win $_nWave3 {Input/G2} {Output}
wvSetCursor -win $_nWave3 17.145530 -snap {("Input" 0)}
debExit
