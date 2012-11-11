#===============================================================================
#  File        :  multn_syn.tcl
#  Description :  Synthesis script for generic multiplier model.
#  Notes       :  -.
#  Author      :  Alain Vachoux, EPFL STI IEL LSM, alain.vachoux@epfl.ch
#                 for Hardware Modeling I course.
#  Tools       :  Synopsys DC 2009.06
#  History     :
#===============================================================================

#  design related definitions
set ENTITY_NAME sqroot_comb
set ARCH_NAME   rtl
set NBITS       8
set LIBRARY	WORK
#
set DESIGN_ENTITY "${ENTITY_NAME}_${ARCH_NAME}"
set DESIGN        "${ENTITY_NAME}_nbits${NBITS}"

puts "-i- Elaborate design"
elaborate ${ENTITY_NAME} -architecture ${ARCH_NAME} \
          -parameters "NBITS = ${NBITS}" \
          -library DEFAULT -update