transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Documents/cpu_4004/src/sim_pkg.vhd}
vcom -93 -work work {D:/Documents/cpu_4004/src/cpu_4004_pkg.vhd}
vcom -93 -work work {D:/Documents/cpu_4004/src/cpu_4004.vhd}

vcom -93 -work work {D:/Documents/cpu_4004/src/cpu_4004_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  cpu_4004_tb

add wave *
view structure
view signals
run -all
