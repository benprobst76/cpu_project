onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /addi_tb/PCout
add wave -noupdate /addi_tb/ZHighout
add wave -noupdate /addi_tb/ZLowOut
add wave -noupdate /addi_tb/MDRout
add wave -noupdate /addi_tb/Gra
add wave -noupdate /addi_tb/Grb
add wave -noupdate /addi_tb/Grc
add wave -noupdate /addi_tb/BAout
add wave -noupdate /addi_tb/Rin
add wave -noupdate /addi_tb/Rout
add wave -noupdate /addi_tb/MARin
add wave -noupdate /addi_tb/ZHighIn
add wave -noupdate /addi_tb/ZLowIn
add wave -noupdate /addi_tb/PCin
add wave -noupdate /addi_tb/MDRin
add wave -noupdate /addi_tb/IRin
add wave -noupdate /addi_tb/IRout
add wave -noupdate /addi_tb/Yin
add wave -noupdate /addi_tb/Yout
add wave -noupdate /addi_tb/IncPC
add wave -noupdate /addi_tb/Read
add wave -noupdate /addi_tb/Write
add wave -noupdate /addi_tb/MARout
add wave -noupdate /addi_tb/LOin
add wave -noupdate /addi_tb/HIin
add wave -noupdate /addi_tb/RCout
add wave -noupdate /addi_tb/R2in
add wave -noupdate /addi_tb/R1in
add wave -noupdate /addi_tb/R5in
add wave -noupdate /addi_tb/R6in
add wave -noupdate /addi_tb/CONin
add wave -noupdate /addi_tb/clock
add wave -noupdate /addi_tb/clear
add wave -noupdate /addi_tb/OutPortIn
add wave -noupdate /addi_tb/InPortIn
add wave -noupdate /addi_tb/InPortOut
add wave -noupdate /addi_tb/Present_state
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addi_tb/ADDI_DUT/R5/BusMuxIn
add wave -noupdate /addi_tb/ADDI_DUT/R5/enable
add wave -noupdate -radix hexadecimal /addi_tb/ADDI_DUT/R6/BusMuxIn
add wave -noupdate /addi_tb/ADDI_DUT/R6/enable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 236
configure wave -valuecolwidth 100
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
configure wave -timelineunits ns
update
WaveRestoreZoom {199050 ps} {199909 ps}
