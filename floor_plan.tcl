floorPlan  -r 1 0.7 20.0 20.0 20.0 20.0
addRing -nets {VDD VSS} -follow core -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -layer {bottom metal5 top metal5 right metal6 left metal6} -width 4 -spacing 2

editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType start -spacing 10 -start 0.0 0.0 -pin {uart_cts uart_dsr uart_dtr uart_rts uart_rx uart_tx}


