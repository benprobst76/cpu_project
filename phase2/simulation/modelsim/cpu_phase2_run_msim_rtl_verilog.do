transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/subtraction.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/shr_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/shra_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/shl_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/shla_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/ror_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/rol_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/register.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/or_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/not_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/negate_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/mux_2_1.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/encoder_32_5.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/division.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/datapath.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/bus.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/booth_multiplier.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/and_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/alu.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/addition.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase2/addition_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  addition_tb

add wave *
view structure
view signals
run 400 ns
