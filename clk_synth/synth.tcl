setDesignMode -process 45
set_ccopt_property target_max_trans 0.08
set_ccopt_property target_skew 0.5
set_ccopt_property buffer_cells {BUF_X1 BUF_X2 BUF_X4 BUF_X8 BUF_X16 CLKBUF_X1 CLKBUF_X2}
set_ccopt_property inverter_cells {INV_X1 INV_X2 INV_X4 INV_X8 INV_X16}
create_ccopt_clock_tree_spec -file ./results/ctsspec.tcl
source ./results/ctsspec.tcl
ccopt_design

report_ccopt_clock_trees –file reports/clock_trees.rpt
report_ccopt_skew_groups –file reports/skew_groups.rpt
report_timing > reports/timing_report_postCCopt.rpt
