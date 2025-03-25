transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/subtraction.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/shr_bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/shra_bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/shl_bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/shla_bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/ror_bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/rol_bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/register.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/or_bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/not_bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/negate_bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/mux_2_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/encoder_32_5.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/division.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/datapath.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/bus.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/booth_multiplier.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/and_bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/addition.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/decoder_4_16.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/select_and_encode.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/con_logic.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/decoder_2_4.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/ff_logic.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/ram.v}

vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Desktop/phase2 {C:/Users/20jw49/Desktop/phase2/br_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  br_tb

add wave *
view structure
view signals
run 400 ns
