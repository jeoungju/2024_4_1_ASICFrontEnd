###################################################################

# Created by write_sdc on Thu May 23 10:59:14 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance 1.000000e+04kOhm -capacitance 1.000000e-04pF    \
-voltage V -current uA
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports n_rst]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[15]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[14]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[13]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[12]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[11]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[10]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[9]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[8]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[7]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[6]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[5]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[4]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[3]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[2]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[1]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {A[0]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[15]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[14]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[13]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[12]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[11]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[10]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[9]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[8]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[7]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[6]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[5]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[4]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[3]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[2]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[1]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports {B[0]}]
set_driving_cell -max -lib_cell IV -no_design_rule [get_ports c_in]
set_load -pin_load 30 [get_ports {sum[15]}]
set_load -pin_load 30 [get_ports {sum[14]}]
set_load -pin_load 30 [get_ports {sum[13]}]
set_load -pin_load 30 [get_ports {sum[12]}]
set_load -pin_load 30 [get_ports {sum[11]}]
set_load -pin_load 30 [get_ports {sum[10]}]
set_load -pin_load 30 [get_ports {sum[9]}]
set_load -pin_load 30 [get_ports {sum[8]}]
set_load -pin_load 30 [get_ports {sum[7]}]
set_load -pin_load 30 [get_ports {sum[6]}]
set_load -pin_load 30 [get_ports {sum[5]}]
set_load -pin_load 30 [get_ports {sum[4]}]
set_load -pin_load 30 [get_ports {sum[3]}]
set_load -pin_load 30 [get_ports {sum[2]}]
set_load -pin_load 30 [get_ports {sum[1]}]
set_load -pin_load 30 [get_ports {sum[0]}]
set_load -pin_load 30 [get_ports c_out]
set_max_capacitance 10 [get_ports n_rst]
set_max_capacitance 10 [get_ports {A[15]}]
set_max_capacitance 10 [get_ports {A[14]}]
set_max_capacitance 10 [get_ports {A[13]}]
set_max_capacitance 10 [get_ports {A[12]}]
set_max_capacitance 10 [get_ports {A[11]}]
set_max_capacitance 10 [get_ports {A[10]}]
set_max_capacitance 10 [get_ports {A[9]}]
set_max_capacitance 10 [get_ports {A[8]}]
set_max_capacitance 10 [get_ports {A[7]}]
set_max_capacitance 10 [get_ports {A[6]}]
set_max_capacitance 10 [get_ports {A[5]}]
set_max_capacitance 10 [get_ports {A[4]}]
set_max_capacitance 10 [get_ports {A[3]}]
set_max_capacitance 10 [get_ports {A[2]}]
set_max_capacitance 10 [get_ports {A[1]}]
set_max_capacitance 10 [get_ports {A[0]}]
set_max_capacitance 10 [get_ports {B[15]}]
set_max_capacitance 10 [get_ports {B[14]}]
set_max_capacitance 10 [get_ports {B[13]}]
set_max_capacitance 10 [get_ports {B[12]}]
set_max_capacitance 10 [get_ports {B[11]}]
set_max_capacitance 10 [get_ports {B[10]}]
set_max_capacitance 10 [get_ports {B[9]}]
set_max_capacitance 10 [get_ports {B[8]}]
set_max_capacitance 10 [get_ports {B[7]}]
set_max_capacitance 10 [get_ports {B[6]}]
set_max_capacitance 10 [get_ports {B[5]}]
set_max_capacitance 10 [get_ports {B[4]}]
set_max_capacitance 10 [get_ports {B[3]}]
set_max_capacitance 10 [get_ports {B[2]}]
set_max_capacitance 10 [get_ports {B[1]}]
set_max_capacitance 10 [get_ports {B[0]}]
set_max_capacitance 10 [get_ports c_in]
create_clock [get_ports clk]  -period 9  -waveform {0 4.5}
set_clock_latency -max 0.3  [get_clocks clk]
set_clock_latency -source -max 0.7  [get_clocks clk]
set_clock_uncertainty -setup 0.15  [get_clocks clk]
set_clock_transition -min -fall 0.12 [get_clocks clk]
set_clock_transition -min -rise 0.12 [get_clocks clk]
set_clock_transition -max -fall 0.12 [get_clocks clk]
set_clock_transition -max -rise 0.12 [get_clocks clk]
group_path -weight 5  -name CLK
group_path -name COMBO  -from [list [get_ports clk] [get_ports n_rst] [get_ports {A[15]}] [get_ports  \
{A[14]}] [get_ports {A[13]}] [get_ports {A[12]}] [get_ports {A[11]}]           \
[get_ports {A[10]}] [get_ports {A[9]}] [get_ports {A[8]}] [get_ports {A[7]}]   \
[get_ports {A[6]}] [get_ports {A[5]}] [get_ports {A[4]}] [get_ports {A[3]}]    \
[get_ports {A[2]}] [get_ports {A[1]}] [get_ports {A[0]}] [get_ports {B[15]}]   \
[get_ports {B[14]}] [get_ports {B[13]}] [get_ports {B[12]}] [get_ports         \
{B[11]}] [get_ports {B[10]}] [get_ports {B[9]}] [get_ports {B[8]}] [get_ports  \
{B[7]}] [get_ports {B[6]}] [get_ports {B[5]}] [get_ports {B[4]}] [get_ports    \
{B[3]}] [get_ports {B[2]}] [get_ports {B[1]}] [get_ports {B[0]}] [get_ports    \
c_in]]  -to [list [get_ports {sum[15]}] [get_ports {sum[14]}] [get_ports {sum[13]}]   \
[get_ports {sum[12]}] [get_ports {sum[11]}] [get_ports {sum[10]}] [get_ports   \
{sum[9]}] [get_ports {sum[8]}] [get_ports {sum[7]}] [get_ports {sum[6]}]       \
[get_ports {sum[5]}] [get_ports {sum[4]}] [get_ports {sum[3]}] [get_ports      \
{sum[2]}] [get_ports {sum[1]}] [get_ports {sum[0]}] [get_ports c_out]]
group_path -name INPUTS  -from [list [get_ports clk] [get_ports n_rst] [get_ports {A[15]}] [get_ports  \
{A[14]}] [get_ports {A[13]}] [get_ports {A[12]}] [get_ports {A[11]}]           \
[get_ports {A[10]}] [get_ports {A[9]}] [get_ports {A[8]}] [get_ports {A[7]}]   \
[get_ports {A[6]}] [get_ports {A[5]}] [get_ports {A[4]}] [get_ports {A[3]}]    \
[get_ports {A[2]}] [get_ports {A[1]}] [get_ports {A[0]}] [get_ports {B[15]}]   \
[get_ports {B[14]}] [get_ports {B[13]}] [get_ports {B[12]}] [get_ports         \
{B[11]}] [get_ports {B[10]}] [get_ports {B[9]}] [get_ports {B[8]}] [get_ports  \
{B[7]}] [get_ports {B[6]}] [get_ports {B[5]}] [get_ports {B[4]}] [get_ports    \
{B[3]}] [get_ports {B[2]}] [get_ports {B[1]}] [get_ports {B[0]}] [get_ports    \
c_in]]
group_path -name OUTPUTS  -to [list [get_ports {sum[15]}] [get_ports {sum[14]}] [get_ports {sum[13]}]   \
[get_ports {sum[12]}] [get_ports {sum[11]}] [get_ports {sum[10]}] [get_ports   \
{sum[9]}] [get_ports {sum[8]}] [get_ports {sum[7]}] [get_ports {sum[6]}]       \
[get_ports {sum[5]}] [get_ports {sum[4]}] [get_ports {sum[3]}] [get_ports      \
{sum[2]}] [get_ports {sum[1]}] [get_ports {sum[0]}] [get_ports c_out]]
set_input_delay -clock clk  -max 0.45  [get_ports {A[15]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[14]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[13]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[12]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[11]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[10]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[9]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[8]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[7]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[6]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[5]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[4]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[3]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[2]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[1]}]
set_input_delay -clock clk  -max 0.45  [get_ports {A[0]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[15]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[14]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[13]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[12]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[11]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[10]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[9]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[8]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[7]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[6]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[5]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[4]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[3]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[2]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[1]}]
set_input_delay -clock clk  -max 0.45  [get_ports {B[0]}]
set_input_delay -clock clk  -max 0.4  [get_ports c_in]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[15]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[14]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[13]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[12]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[11]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[10]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[9]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[8]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[7]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[6]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[5]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[4]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[3]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[2]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[1]}]
set_output_delay -clock clk  -max 0.5  [get_ports {sum[0]}]
set_output_delay -clock clk  -max 0.4  [get_ports c_out]
