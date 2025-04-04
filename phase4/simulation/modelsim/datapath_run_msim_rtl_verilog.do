transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/zero_register.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/subtraction.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/shr_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/shra_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/shl_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/shla_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/select_and_encode.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/ror_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/rol_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/register.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/pc_register.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/or_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/not_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/negate_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/mux_2_1.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/ff_logic.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/encoder_32_5.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/division.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/decoder_4_16.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/decoder_2_4.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/datapath.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/con_logic.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/control_unit.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/bus.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/booth_multiplier.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/and_bits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/alu.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/addition.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4 {C:/intelFPGA_lite/18.1/elec374/cpu_project/phase4/ram.v}

