simSetSimulator "-vcssv" -exec "./simv" -args
debImport "-sv" "-dbdir" "./simv.daidir" "-f" "run.f"
debLoadSimResult /home1/std6/ASIC/lab02/hw_2/full_adder/sim/fnc/wave.fsdb
wvCreateWindow
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
           {/home1/std6/ASIC/lab02/hw_2/full_adder/sim/fnc/wave.fsdb}
schSelect -win $_nSchema4 -inst "u_F_A"
schAddSelectedToWave -win $_nSchema4 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema4 -inst "u_F_A"
schAddSelectedToWave -win $_nSchema4 -clipboard
wvDrop -win $_nWave2
wvAddSignal -win $_nWave3 "/testbench/sum" "/testbench/c_out" "/testbench/c_in" \
           "/testbench/B" "/testbench/A"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvZoomAll -win $_nWave3
schSelect -win $_nSchema4 -inst "u_F_A"
schSelect -win $_nSchema4 -inst "u_F_A"
schSelect -win $_nSchema4 -inst "u_F_A"
schAddSelectedToWave -win $_nSchema4 -clipboard
wvDrop -win $_nWave2
wvSelectGroup -win $_nWave3 {G2}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvMoveSelected -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSelectSignal -win $_nWave3 {( "G1" 4 5 )} 
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSelectGroup -win $_nWave3 {G2}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSelectGroup -win $_nWave3 {G2}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1/G2" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1/G2" 0)}
wvSetPosition -win $_nWave3 {("G1/G2" 1)}
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1/G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSelectGroup -win $_nWave3 {G1}
wvRenameGroup -win $_nWave3 {G1} {Input sig}
wvSelectSignal -win $_nWave3 {( "Input sig" 2 )} 
wvSelectGroup -win $_nWave3 {Input sig/G2}
wvRenameGroup -win $_nWave3 {Input sig/G2} {Carry}
wvSelectGroup -win $_nWave3 {Input sig/G2}
wvRenameGroup -win $_nWave3 {Input sig/G2} {Output}
debExit
