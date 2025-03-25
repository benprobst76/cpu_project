onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ld_tb/PCout
add wave -noupdate /ld_tb/ZHighout
add wave -noupdate /ld_tb/ZLowOut
add wave -noupdate /ld_tb/MDRout
add wave -noupdate /ld_tb/Gra
add wave -noupdate /ld_tb/Grb
add wave -noupdate /ld_tb/Grc
add wave -noupdate /ld_tb/BAout
add wave -noupdate /ld_tb/Rin
add wave -noupdate /ld_tb/Rout
add wave -noupdate /ld_tb/MARin
add wave -noupdate /ld_tb/ZHighIn
add wave -noupdate /ld_tb/ZLowIn
add wave -noupdate /ld_tb/PCin
add wave -noupdate /ld_tb/MDRin
add wave -noupdate /ld_tb/IRin
add wave -noupdate /ld_tb/IRout
add wave -noupdate /ld_tb/Yin
add wave -noupdate /ld_tb/Yout
add wave -noupdate /ld_tb/IncPC
add wave -noupdate /ld_tb/Read
add wave -noupdate /ld_tb/Write
add wave -noupdate /ld_tb/MARout
add wave -noupdate /ld_tb/LOin
add wave -noupdate /ld_tb/HIin
add wave -noupdate /ld_tb/RCout
add wave -noupdate /ld_tb/clock
add wave -noupdate /ld_tb/clear
add wave -noupdate /ld_tb/Present_state
add wave -noupdate /ld_tb/LD_DUT/R4/enable
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/R4/BusMuxIn
add wave -noupdate /ld_tb/LD_DUT/R6/enable
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/R6/BusMuxIn
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/R2/BusMuxIn
add wave -noupdate /ld_tb/LD_DUT/R2/enable
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/PC/BusMuxIn
add wave -noupdate /ld_tb/LD_DUT/PC/enable
add wave -noupdate /ld_tb/LD_DUT/MAR/enable
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/MAR/BusMuxIn
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/MDRreg/BusMuxIn
add wave -noupdate /ld_tb/LD_DUT/MDRreg/enable
add wave -noupdate /ld_tb/LD_DUT/IR/enable
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/IR/BusMuxIn
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/S_and_E/IR
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/S_and_E/Gra
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/S_and_E/Grb
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/S_and_E/Grc
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/S_and_E/Rin
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/S_and_E/Rout
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/S_and_E/BAout
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/S_and_E/C_sign_extended
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/S_and_E/R0_15in
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/S_and_E/R0_15out
add wave -noupdate -radix hexadecimal /ld_tb/LD_DUT/S_and_E/DecoderOut
add wave -noupdate -radix binary /ld_tb/LD_DUT/S_and_E/DecoderIn
add wave -noupdate /ld_tb/LD_DUT/RY/BusMuxIn
add wave -noupdate /ld_tb/LD_DUT/RY/enable
add wave -noupdate /ld_tb/LD_DUT/IR/BusMuxIn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {103775 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 217
configure wave -valuecolwidth 73
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {402184 ps}
