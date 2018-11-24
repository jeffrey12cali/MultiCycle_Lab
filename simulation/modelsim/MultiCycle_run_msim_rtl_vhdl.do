transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/output1.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/input1.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/addressDecoder.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/controlUnit.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/mux3.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/registerFile.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/mux2.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/mux.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/alu.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/IR.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/SignExtend.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/ShiftLeft2_1.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/PC.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/MultiCycle.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/ALUControl.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/NewState.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/reg32bit.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/ShiftLeft2_2.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/mux3jump.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/memoryV2.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/GitHub/MultiCycle_Lab/reg32bitEN.vhd}

