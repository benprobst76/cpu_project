onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ori_tb/PCout
add wave -noupdate /ori_tb/ZHighout
add wave -noupdate /ori_tb/ZLowOut
add wave -noupdate /ori_tb/MDRout
add wave -noupdate /ori_tb/Gra
add wave -noupdate /ori_tb/Grb
add wave -noupdate /ori_tb/Grc
add wave -noupdate /ori_tb/BAout
add wave -noupdate /ori_tb/Rin
add wave -noupdate /ori_tb/Rout
add wave -noupdate /ori_tb/MARin
add wave -noupdate /ori_tb/ZHighIn
add wave -noupdate /ori_tb/ZLowIn
add wave -noupdate /ori_tb/PCin
add wave -noupdate /ori_tb/MDRin
add wave -noupdate /ori_tb/IRin
add wave -noupdate /ori_tb/IRout
add wave -noupdate /ori_tb/Yin
add wave -noupdate /ori_tb/Yout
add wave -noupdate /ori_tb/IncPC
add wave -noupdate /ori_tb/Read
add wave -noupdate /ori_tb/Write
add wave -noupdate /ori_tb/MARout
add wave -noupdate /ori_tb/LOin
add wave -noupdate /ori_tb/HIin
add wave -noupdate /ori_tb/RCout
add wave -noupdate /ori_tb/R2in
add wave -noupdate /ori_tb/R1in
add wave -noupdate /ori_tb/R5in
add wave -noupdate /ori_tb/R6in
add wave -noupdate /ori_tb/CONin
add wave -noupdate /ori_tb/clock
add wave -noupdate /ori_tb/clear
add wave -noupdate /ori_tb/OutPortIn
add wave -noupdate /ori_tb/InPortIn
add wave -noupdate /ori_tb/InPortOut
add wave -noupdate /ori_tb/Present_state
add wave -noupdate -radix binary /ori_tb/ORI_DUT/R5/BusMuxIn
add wave -noupdate /ori_tb/ORI_DUT/R5/enable
add wave -noupdate /ori_tb/ORI_DUT/R6/BusMuxIn
add wave -noupdate /ori_tb/ORI_DUT/R6/enable
add wave -noupdate /ori_tb/ORI_DUT/ALU/or_/RA
add wave -noupdate /ori_tb/ORI_DUT/ALU/or_/RB
add wave -noupdate /ori_tb/ORI_DUT/ALU/or_/RZ
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {143867 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 195
configure wave -valuecolwidth 305
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
WaveRestoreZoom {0 ps} {210 ns}
