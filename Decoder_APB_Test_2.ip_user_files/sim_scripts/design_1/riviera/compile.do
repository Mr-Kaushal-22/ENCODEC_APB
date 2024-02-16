transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib \
"../../../bd/design_1/ip/design_1_FIFO_0_0/sim/design_1_FIFO_0_0.v" \
"../../../bd/design_1/ip/design_1_ENCODEC_0_0/sim/design_1_ENCODEC_0_0.v" \
"../../../bd/design_1/ip/design_1_APB_Master_0_0/sim/design_1_APB_Master_0_0.v" \
"../../../bd/design_1/ip/design_1_APB_Slave_0_0/sim/design_1_APB_Slave_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

