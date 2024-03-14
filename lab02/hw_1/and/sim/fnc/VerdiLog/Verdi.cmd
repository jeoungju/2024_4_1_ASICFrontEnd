debImport "-f" "run.f"
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench"
schSetOptions -win $_nSchema3 -portName on
schSetOptions -win $_nSchema3 -pinName on
schSetOptions -win $_nSchema3 -instName on
schSetOptions -win $_nSchema3 -completeName on
schSetOptions -win $_nSchema3 -parameterList on
schSetOptions -win $_nSchema3 -highContrastMode on
schSetOptions -win $_nSchema3 -localNetName on
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home1/std6/ASIC/lab02/hw_1/and/sim/fnc/test.fsdb}
schSelect -win $_nSchema3 -inst "u_and_gate"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
wvZoomAll -win $_nWave2
verdiWindowResize -win $_Verdi_1 "250" "67" "1370" "805"
wvZoomAll -win $_nWave2
debExit
