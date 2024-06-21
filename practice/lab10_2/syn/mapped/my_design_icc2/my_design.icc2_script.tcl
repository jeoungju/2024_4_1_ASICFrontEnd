set _DCG_ICC2_DIR_ [file dirname [file normalize [info script]]]



##################################################################
# Read Design
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/my_design.v]} {
read_verilog ${_DCG_ICC2_DIR_}/my_design.v -top my_design
}



##################################################################
# Read settings
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/my_design.settings.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/my_design.settings.tcl 
}



##################################################################
# Read SDC
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/my_design.MCMM/top.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/my_design.MCMM/top.tcl 
}



##################################################################
# Read scan DEF
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/my_design.scan.def]} {
read_def ${_DCG_ICC2_DIR_}/my_design.scan.def 
}



##################################################################
# Read cell expansion data
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/my_design.cell.exp]} {
read_cell_expansion -input ${_DCG_ICC2_DIR_}/my_design.cell.exp 
}



