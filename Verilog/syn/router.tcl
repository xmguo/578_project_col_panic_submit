################################################################################
## DO NOT EDIT THESE FILES BY HAND
##
## CONFIGURATION HAS BEEN MOVED TO THE MAKEFILE
################################################################################
set search_path [ list "../src/clib/" "./" "/afs/umich.edu/class/eecs470/lib/synopsys/" ]
set target_library "lec25dscc25_TT.db"
set link_library [concat  "*" $target_library]

#/***********************************************************/
#/* Set some flags to suppress warnings we don't care about */
set suppress_errors [concat $suppress_errors "UID-401"]
suppress_message {"VER-130"}

#/***********************************************************/
#/* The following lines are set from environment variables
#/* automatically by the Makefile
#/***********************************************************/

#set srcfile [getenv SOURCES]
#read_file -f sverilog [list ${srcfile}]
#analyze -f sverilog [list ${srcfile}]
analyze -f sverilog [list "../src/clib/c_functions.v" "../src/clib/c_matrix_arbiter.v" "../src/clib/c_mat_mult.v" "../src/clib/c_reverse.v" "../src/clib/c_incr.v" "../src/clib/c_encode.v" "../src/clib/c_prefix_net.v" "../src/clib/c_one_hot_therm_conv.v" "../src/clib/c_damq_ctrl.v" "../src/clib/c_interleave.v" "../src/clib/c_damq_tracker.v" "../src/clib/c_rr_arbiter.v" "../src/clib/c_wf_alloc_loop.v" "../src/clib/c_wf_alloc_rot.v" "../src/clib/c_reduce_bits.v" "../src/clib/c_prefix_arbiter.v" "../src/clib/c_wf_alloc.v" "../src/clib/c_decode.v" "../src/clib/c_constants.v" "../src/clib/c_fifo_ctrl.v" "../src/clib/c_prefix_arbiter_base.v" "../src/clib/c_gather.v" "../src/clib/c_shift_reg.v" "../src/clib/c_wf_alloc_dpa.v" "../src/clib/c_multi_hot_det.v" "../src/clib/c_fbmult.v" "../src/clib/c_dff.v" "../src/clib/c_err_rpt.v" "../src/clib/c_lfsr.v" "../src/clib/c_samq_ctrl.v" "../src/clib/c_crossbar.v" "../src/clib/c_prio_sel.v" "../src/clib/c_samq_tracker.v" "../src/clib/c_fbgen.v" "../src/clib/c_decr.v" "../src/clib/c_one_hot_filter.v" "../src/clib/c_lod.v" "../src/clib/c_arbiter.v" "../src/clib/c_wf_alloc_rep.v" "../src/clib/c_select_mofn.v" "../src/clib/c_fifo.v" "../src/clib/c_rotate.v" "../src/clib/c_clkgate.v" "../src/clib/c_fifo_tracker.v" "../src/clib/c_rr_arbiter_base.v" "../src/clib/c_regfile.v" "../src/clib/c_prio_enc.v" "../src/clib/c_align.v" "../src/clib/c_wf_alloc_sdpa.v" "../src/clib/c_add_nto1.v" "../src/clib/c_scatter.v" "../src/clib/c_select_1ofn.v" "../src/clib/c_diag_op.v" "../src/clib/c_gate_bits.v" "../src/clib/c_binary_op.v" "../src/clib/c_wf_alloc_mux.v" "../src/whr_op_ctrl_mac.v" "../src/vcr_sw_alloc_sep_if.v" "../src/vcr_ovc_ctrl.v" "../src/rtr_fc_state.v" "../src/rtr_routing_logic.v" "../src/rtr_top.v" "../src/vcr_top.v" "../src/vcr_sw_alloc_wf.v" "../src/whr_top.v" "../src/rtr_flow_ctrl_input.v" "../src/vcr_vc_alloc_sep_if.v" "../src/parameters.v" "../src/vcr_ip_ctrl_mac.v" "../src/vcr_vc_alloc_sep_of.v" "../src/vcr_constants.v" "../src/rtr_ip_ctrl_mac.v" "../src/vcr_vc_alloc_wf.v" "../src/rtr_flow_ctrl_output.v" "../src/rtr_flit_buffer.v" "../src/rtr_flags_mux.v" "../src/whr_ip_ctrl_mac.v" "../src/rtr_flit_type_check.v" "../src/vcr_sw_alloc_sep_of.v" "../src/whr_constants.v" "../src/router_wrap.v" "../src/rtr_constants.v" "../src/rtr_next_hop_addr.v" "../src/rtr_channel_input.v" "../src/rtr_alloc_mac.v" "../src/whr_alloc_mac.v" "../src/rtr_route_filter.v" "../src/vcr_alloc_mac.v" "../src/vcr_op_ctrl_mac.v" "../src/rtr_crossbar_mac.v" "../src/rtr_channel_output.v" "../src/rtr_op_ctrl_mac.v" "../src/vcr_ivc_ctrl.v"]

set CLK_PERIOD 4.9

elaborate router_wrap
set design_name router_wrap

set clock_name clk
set reset_name reset


#/***********************************************************/
#/* The rest of this file may be left alone for most small  */
#/* to moderate sized designs.  You may need to alter it    */
#/* when synthesizing your final project.                   */
#/***********************************************************/
set SYN_DIR ./

#/***********************************************************/
#/* Set some flags for optimisation */

set compile_top_all_paths "true"
set auto_wire_load_selection "false"
set compile_seqmap_synchronous_extraction "true"

# uncomment this and change number appropriately if on multi-core machine
#set_host_options -max_cores 2

#/***********************************************************/
#/*  Clk Periods/uncertainty/transition                     */

set CLK_TRANSITION 0.1
set CLK_UNCERTAINTY 0.1
set CLK_LATENCY 0.1

#/* Input/output Delay values */
set AVG_INPUT_DELAY 0.1
set AVG_OUTPUT_DELAY 0.1

#/* Critical Range (ns) */
set CRIT_RANGE 1.0

#/***********************************************************/
#/* Design Constrains: Not all used                         */
set MAX_TRANSITION 1.0
set FAST_TRANSITION 0.1
set MAX_FANOUT 32
set MID_FANOUT 8
set LOW_FANOUT 1
set HIGH_DRIVE 0
set HIGH_LOAD 1.0
set AVG_LOAD 0.1
set AVG_FANOUT_LOAD 10

#/***********************************************************/
#/*BASIC_INPUT = cb18os120_tsmc_max/nd02d1/A1
#BASIC_OUTPUT = cb18os120_tsmc_max/nd02d1/ZN*/

set DRIVING_CELL dffacs1

#/* DONT_USE_LIST = {   } */

#/*************operation cons**************/
#/*OP_WCASE = WCCOM;
#OP_BCASE = BCCOM;*/
set WIRE_LOAD "tsmcwire"
set LOGICLIB lec25dscc25_TT
#/*****************************/

#/* Sourcing the file that sets the Search path and the libraries(target,link) */

set sys_clk $clock_name

set netlist_file [format "%s%s"  [format "%s%s"  $SYN_DIR $design_name] ".vg"]
set svsim_file [format "%s%s%s" $SYN_DIR $design_name "_svsim.sv"]
set ddc_file [format "%s%s"  [format "%s%s"  $SYN_DIR $design_name] ".ddc"]
set rep_file [format "%s%s"  [format "%s%s"  $SYN_DIR $design_name] ".rep"]
set res_file [format "%s%s%s" $SYN_DIR $design_name ".res"]
set dc_shell_status [ set chk_file [format "%s%s"  [format "%s%s"  $SYN_DIR $design_name] ".chk"] ]

#/* if we didnt find errors at this point, run */
if {  $dc_shell_status != [list] } {
  current_design $design_name
  link
  set_wire_load_model -name $WIRE_LOAD -lib $LOGICLIB $design_name
  set_wire_load_mode top
  set_fix_multiple_port_nets -outputs -buffer_constants
  create_clock -period $CLK_PERIOD -name $sys_clk [find port $sys_clk]
  set_clock_uncertainty $CLK_UNCERTAINTY $sys_clk
  set_fix_hold $sys_clk
  group_path -from [all_inputs] -name input_grp
  group_path -to [all_outputs] -name output_grp
  set_driving_cell  -lib_cell $DRIVING_CELL [all_inputs]
  remove_driving_cell [find port $sys_clk]
  set_fanout_load $AVG_FANOUT_LOAD [all_outputs]
  set_load $AVG_LOAD [all_outputs]
  set_input_delay $AVG_INPUT_DELAY -clock $sys_clk [all_inputs]
  remove_input_delay -clock $sys_clk [find port $sys_clk]
  set_output_delay $AVG_OUTPUT_DELAY -clock $sys_clk [all_outputs]
  set_dont_touch $reset_name
  set_resistance 0 $reset_name
  set_drive 0 $reset_name
  set_critical_range $CRIT_RANGE [current_design]
  set_max_delay $CLK_PERIOD [all_outputs]
  set MAX_FANOUT $MAX_FANOUT
  set MAX_TRANSITION $MAX_TRANSITION
  uniquify
  ungroup -all -flatten
  redirect $chk_file { check_design }
  compile -map_effort high
  write -hier -format verilog -output $netlist_file $design_name
  write -hier -format ddc -output $ddc_file $design_name
  write -format svsim -output $svsim_file $design_name
  redirect $rep_file { report_design -nosplit }
  redirect -append $rep_file { report_area }
  redirect -append $rep_file { report_timing -max_paths 2 -input_pins -nets -transition_time -nosplit }
  redirect -append $rep_file { report_constraint -max_delay -verbose -nosplit }
  redirect $res_file { report_resources -hier }
  remove_design -all
  read_file -format verilog $netlist_file
  current_design $design_name
  redirect -append $rep_file { report_reference -nosplit }
  quit
} else {
  quit
}


