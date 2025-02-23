transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/register.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/bus.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/alu.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/datapath.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/booth_multiplier.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/division.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/addition.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/mux_2_1.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/encoder_32_5.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/negate_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/not_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/shr_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/shra_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/shl_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/shla_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/ror_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/rol_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/or_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/and_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/subtraction.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase1/or_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  or_tb

add wave *
view structure
view signals
run 400 ns
