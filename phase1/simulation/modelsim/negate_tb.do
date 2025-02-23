onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /negate_tb/PCout
add wave -noupdate /negate_tb/ZHighout
add wave -noupdate /negate_tb/ZLowOut
add wave -noupdate /negate_tb/MDRout
add wave -noupdate /negate_tb/R4out
add wave -noupdate /negate_tb/R3out
add wave -noupdate /negate_tb/R7out
add wave -noupdate /negate_tb/R5out
add wave -noupdate /negate_tb/R2out
add wave -noupdate /negate_tb/R6out
add wave -noupdate /negate_tb/MARin
add wave -noupdate /negate_tb/ZHighIn
add wave -noupdate /negate_tb/ZLowIn
add wave -noupdate /negate_tb/PCin
add wave -noupdate /negate_tb/MDRin
add wave -noupdate /negate_tb/IRin
add wave -noupdate /negate_tb/IRout
add wave -noupdate /negate_tb/Yin
add wave -noupdate /negate_tb/Yout
add wave -noupdate /negate_tb/IncPC
add wave -noupdate /negate_tb/Read
add wave -noupdate /negate_tb/MARout
add wave -noupdate /negate_tb/LOin
add wave -noupdate /negate_tb/HIin
add wave -noupdate /negate_tb/R4in
add wave -noupdate /negate_tb/R3in
add wave -noupdate /negate_tb/R7in
add wave -noupdate /negate_tb/R5in
add wave -noupdate /negate_tb/R2in
add wave -noupdate /negate_tb/R6in
add wave -noupdate /negate_tb/clock
add wave -noupdate /negate_tb/clear
add wave -noupdate /negate_tb/Mdatain
add wave -noupdate /negate_tb/Present_state
add wave -noupdate /negate_tb/NEG_DUT/R5/BusMuxIn
add wave -noupdate /negate_tb/NEG_DUT/R5/enable
add wave -noupdate /negate_tb/NEG_DUT/ALU/negate/Ra
add wave -noupdate /negate_tb/NEG_DUT/ALU/negate/Rz
add wave -noupdate /negate_tb/NEG_DUT/ALU/negate/temp
add wave -noupdate /negate_tb/NEG_DUT/ALU/negate/cout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {164171 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 223
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
WaveRestoreZoom {0 ps} {420 ns}
