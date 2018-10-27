transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Miscelanea/Documentos/MultiCycle_Lab/controlUnit.vhd}
vcom -93 -work work {D:/Miscelanea/Documentos/MultiCycle_Lab/mux3.vhd}
vcom -93 -work work {D:/Miscelanea/Documentos/MultiCycle_Lab/registerFile.vhd}
vcom -93 -work work {D:/Miscelanea/Documentos/MultiCycle_Lab/memory.vhd}
vcom -93 -work work {D:/Miscelanea/Documentos/MultiCycle_Lab/mux2.vhd}
vcom -93 -work work {D:/Miscelanea/Documentos/MultiCycle_Lab/mux.vhd}
vcom -93 -work work {D:/Miscelanea/Documentos/MultiCycle_Lab/alu.vhd}
vcom -93 -work work {D:/Miscelanea/Documentos/MultiCycle_Lab/IR.vhd}
vcom -93 -work work {D:/Miscelanea/Documentos/MultiCycle_Lab/PC.vhd}
vcom -93 -work work {D:/Miscelanea/Documentos/MultiCycle_Lab/MultiCycle.vhd}
vcom -93 -work work {D:/Miscelanea/Documentos/MultiCycle_Lab/ALUControl.vhd}
vcom -93 -work work {D:/Miscelanea/Documentos/MultiCycle_Lab/NewState.vhd}

