verify_drc -limit 100000  -report reports/pulpino_soc.drc
verify_connectivity -report reports/pulpino_soc.connect

editDeleteViolations
routeDesign
verify_drc -limit 10000
saveDesign ./results/postRoute.enc
source ./results/postRoute.enc

setExtractRCMode -engine postRoute -effortLevel low
extractRC
rcOut -spef fe_extended.spef

streamOut results/pulpino_soc.gds -mapFile streamOut.map -libName my_library -units 2000 -mode ALL
