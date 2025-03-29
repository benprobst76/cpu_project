onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mflo_tb/PCout
add wave -noupdate /mflo_tb/ZHighout
add wave -noupdate /mflo_tb/ZLowOut
add wave -noupdate /mflo_tb/MDRout
add wave -noupdate /mflo_tb/Gra
add wave -noupdate /mflo_tb/Grb
add wave -noupdate /mflo_tb/Grc
add wave -noupdate /mflo_tb/BAout
add wave -noupdate /mflo_tb/Rin
add wave -noupdate /mflo_tb/Rout
add wave -noupdate /mflo_tb/MARin
add wave -noupdate /mflo_tb/ZHighIn
add wave -noupdate /mflo_tb/ZLowIn
add wave -noupdate /mflo_tb/PCin
add wave -noupdate /mflo_tb/MDRin
add wave -noupdate /mflo_tb/IRin
add wave -noupdate /mflo_tb/IRout
add wave -noupdate /mflo_tb/Yin
add wave -noupdate /mflo_tb/Yout
add wave -noupdate /mflo_tb/IncPC
add wave -noupdate /mflo_tb/Read
add wave -noupdate /mflo_tb/Write
add wave -noupdate /mflo_tb/MARout
add wave -noupdate /mflo_tb/LOin
add wave -noupdate /mflo_tb/HIin
add wave -noupdate /mflo_tb/RCout
add wave -noupdate /mflo_tb/R2in
add wave -noupdate /mflo_tb/R1in
add wave -noupdate /mflo_tb/R5in
add wave -noupdate /mflo_tb/R6in
add wave -noupdate /mflo_tb/CONin
add wave -noupdate /mflo_tb/clock
add wave -noupdate /mflo_tb/clear
add wave -noupdate /mflo_tb/OutPortIn
add wave -noupdate /mflo_tb/InPortIn
add wave -noupdate /mflo_tb/InPortOut
add wave -noupdate /mflo_tb/LOout
add wave -noupdate /mflo_tb/HIout
add wave -noupdate /mflo_tb/Present_state
add wave -noupdate /mflo_tb/MFLO_DUT/R3/BusMuxIn
add wave -noupdate /mflo_tb/MFLO_DUT/R3/enable
add wave -noupdate /mflo_tb/MFLO_DUT/LO/BusMuxIn
add wave -noupdate /mflo_tb/MFLO_DUT/LO/enable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {114156 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 223
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
WaveRestoreZoom {0 ps} {210 ns}
