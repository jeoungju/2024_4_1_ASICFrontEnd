source common_setup.tcl
source pt_setup.tcl

read_verilog $NETLIST_FILES
current_design $DESIGN_NAME
link_design -verbose

source /home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab_fin/fin_rev03/syn/scr/top.con

update_timing

check_timing
report_analysis_coverage
report_timing

file delete -force top_savesession
save_session top_savesession

quit
