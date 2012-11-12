#===============================================================================
#  File        :  sqroot_comb_syn.tcl
#  Description :  Synthesis script for combinatory sqroot calculator.
#  Notes       :  -.
#  Author      :  Michaël Roy, michael.roy@epfl.ch
#                 for Hardware Modeling I course.
#  Tools       :  Synopsys DC 2011.09
#  History     :  12/11/12 Initial version
#===============================================================================

#  design related definitions
set ENTITY_NAME sqroot_comb
set ARCH_NAME   rtl
set NBITS       16
set DELAY	7.9
#
set DESIGN_ENTITY "${ENTITY_NAME}_${ARCH_NAME}"
set DESIGN        "${ENTITY_NAME}_nbits${NBITS}"

#  start from fresh state
remove_design -all

#  analyze VHDL sources
puts "-i- Analyze HDL/RTL/${DESIGN_ENTITY}.vhd"
analyze -format vhdl HDL/RTL/${DESIGN_ENTITY}.vhd

#  elaborate design
puts "-i- Elaborate design"
elaborate ${ENTITY_NAME} -architecture ${ARCH_NAME} \
          -parameters "NBITS = ${NBITS}" \
          -library DEFAULT -update

#  save elaborated design
puts "-i- Save elaborated design"
write -hierarchy -format ddc -output DB/${DESIGN}_elab.ddc

#  define constraints
puts "-i- Define constraints"
puts "-i-   set_max_delay ${DELAY} -to [all_outputs]"
puts "-i-   set_max_area 0"
puts "-i-   set_fix_multiple_port_nets -all"
set_max_delay ${DELAY} -to [all_outputs]
set_max_area 0
set_fix_multiple_port_nets -all

#  map and optimize design
puts "-i- Map and optimize design"
compile -map_effort medium -area_effort medium

#  save mapped design
puts "-i- Save mapped design"
write -hierarchy -format ddc -output DB/${DESIGN}_mapped.ddc

#  generate reports
puts "-i- Generate reports"
report_constraint -nosplit -all_violators > RPT/${DESIGN}_allviol.rpt
report_area > RPT/${DESIGN}_area.rpt
report_timing > RPT/${DESIGN}_timing.rpt
report_resources -nosplit -hierarchy > RPT/${DESIGN}_resources.rpt
report_reference -nosplit -hierarchy > RPT/${DESIGN}_references.rpt

#  generate Verilog netlist
puts "-i- Generate Verilog netlist"
change_names -rules verilog -hierarchy
write -format verilog -hierarchy -output HDL/GATE/${DESIGN}_mapped.v

#  generate SDF timing file for Verilog
puts "-i- Generate SDF file for Verilog netlist"
write_sdf -version 2.1 TIM/${DESIGN}_mapped.sdf

puts "-i- Finished"
