setPlaceMode -placeIOPins 1
placeDesign -noPrePlaceOpt 
createSpareModule -moduleName my_spare -cell {AOI222_X4 1 BUF_X1 2 DFF_X1 5}
placeSpareModule -moduleName my_spare -stepx 50 -stepy 50 -offsetx 5 -offsety 5
report_timing > reports/timing_report_postPlace.rpt
