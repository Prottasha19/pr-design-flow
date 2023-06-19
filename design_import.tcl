set init_lef_file {../../../0_FreePDK45/LEF/NangateOpenCellLibrary.lef ../sram_32_16/sram_32_16_freepdk45.lef}
set init_gnd_net VSS
set init_pwr_net VDD

set init_verilog ../gate/pulpino_top_nangate45.v
set init_top_cell pulpino_top

set init_mmmc_file Default.view

init_design
