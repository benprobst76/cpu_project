onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /andi_tb/PCout
add wave -noupdate /andi_tb/ZHighout
add wave -noupdate /andi_tb/ZLowOut
add wave -noupdate /andi_tb/MDRout
add wave -noupdate /andi_tb/Gra
add wave -noupdate /andi_tb/Grb
add wave -noupdate /andi_tb/Grc
add wave -noupdate /andi_tb/BAout
add wave -noupdate /andi_tb/Rin
add wave -noupdate /andi_tb/Rout
add wave -noupdate /andi_tb/MARin
add wave -noupdate /andi_tb/ZHighIn
add wave -noupdate /andi_tb/ZLowIn
add wave -noupdate /andi_tb/PCin
add wave -noupdate /andi_tb/MDRin
add wave -noupdate /andi_tb/IRin
add wave -noupdate /andi_tb/IRout
add wave -noupdate /andi_tb/Yin
add wave -noupdate /andi_tb/Yout
add wave -noupdate /andi_tb/IncPC
add wave -noupdate /andi_tb/Read
add wave -noupdate /andi_tb/Write
add wave -noupdate /andi_tb/MARout
add wave -noupdate /andi_tb/LOin
add wave -noupdate /andi_tb/HIin
add wave -noupdate /andi_tb/RCout
add wave -noupdate /andi_tb/R2in
add wave -noupdate /andi_tb/R1in
add wave -noupdate /andi_tb/R5in
add wave -noupdate /andi_tb/R6in
add wave -noupdate /andi_tb/CONin
add wave -noupdate /andi_tb/clock
add wave -noupdate /andi_tb/clear
add wave -noupdate /andi_tb/OutPortIn
add wave -noupdate /andi_tb/InPortIn
add wave -noupdate /andi_tb/InPortOut
add wave -noupdate /andi_tb/LOout
add wave -noupdate /andi_tb/HIout
add wave -noupdate /andi_tb/Present_state
add wave -noupdate /andi_tb/ANDI_DUT/R5/BusMuxIn
add wave -noupdate /andi_tb/ANDI_DUT/R5/enable
add wave -noupdate /andi_tb/ANDI_DUT/R6/BusMuxIn
add wave -noupdate /andi_tb/ANDI_DUT/R6/enable
add wave -noupdate /andi_tb/ANDI_DUT/ALU/and_/Ra
add wave -noupdate /andi_tb/ANDI_DUT/ALU/and_/Rb
add wave -noupdate /andi_tb/ANDI_DUT/ALU/and_/Rz
add wave -noupdate /andi_tb/ANDI_DUT/S_and_E/C_sign_extended
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {126000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 272
configure wave -valuecolwidth 198
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
WaveRestoreZoom {0 ps} {297254 ps}
