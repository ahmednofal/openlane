# Design
set ::env(DESIGN_NAME) "spm"

set ::env(VERILOG_FILES) [glob ./designs/spm/src/*.v]

set ::env(CLOCK_PERIOD) "10.000"
set ::env(CLOCK_PORT) "clk"
set ::env(CELL_PAD) 4
set ::env(RUN_SPEF_EXTRACTION) 0

# set ::env(FP_PIN_ORDER_CFG) $::env(OPENLANE_ROOT)/designs/spm/pin_order.cfg

set filename ./designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
