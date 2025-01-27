transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Downloads/cpu_project-main/phase1 {C:/Users/20jw49/Downloads/cpu_project-main/phase1/register.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Downloads/cpu_project-main/phase1 {C:/Users/20jw49/Downloads/cpu_project-main/phase1/bus.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Downloads/cpu_project-main/phase1 {C:/Users/20jw49/Downloads/cpu_project-main/phase1/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Downloads/cpu_project-main/phase1 {C:/Users/20jw49/Downloads/cpu_project-main/phase1/datapath.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Downloads/cpu_project-main/phase1 {C:/Users/20jw49/Downloads/cpu_project-main/phase1/addition.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Downloads/cpu_project-main/phase1 {C:/Users/20jw49/Downloads/cpu_project-main/phase1/mux_2_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Downloads/cpu_project-main/phase1 {C:/Users/20jw49/Downloads/cpu_project-main/phase1/encoder_32_5.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Downloads/cpu_project-main/phase1 {C:/Users/20jw49/Downloads/cpu_project-main/phase1/negate_bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Downloads/cpu_project-main/phase1 {C:/Users/20jw49/Downloads/cpu_project-main/phase1/not_bits.v}

vlog -vlog01compat -work work +incdir+C:/Users/20jw49/Downloads/cpu_project-main/phase1 {C:/Users/20jw49/Downloads/cpu_project-main/phase1/not_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  not_tb

add wave *
view structure
view signals
run -all
