onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /shra_tb/PCout
add wave -noupdate /shra_tb/ZHighout
add wave -noupdate /shra_tb/ZLowOut
add wave -noupdate /shra_tb/MDRout
add wave -noupdate /shra_tb/R4out
add wave -noupdate /shra_tb/R3out
add wave -noupdate /shra_tb/R7out
add wave -noupdate /shra_tb/R5out
add wave -noupdate /shra_tb/R2out
add wave -noupdate /shra_tb/R6out
add wave -noupdate /shra_tb/MARin
add wave -noupdate /shra_tb/ZHighIn
add wave -noupdate /shra_tb/ZLowIn
add wave -noupdate /shra_tb/PCin
add wave -noupdate /shra_tb/MDRin
add wave -noupdate /shra_tb/IRin
add wave -noupdate /shra_tb/IRout
add wave -noupdate /shra_tb/Yin
add wave -noupdate /shra_tb/Yout
add wave -noupdate /shra_tb/IncPC
add wave -noupdate /shra_tb/Read
add wave -noupdate /shra_tb/MARout
add wave -noupdate /shra_tb/LOin
add wave -noupdate /shra_tb/HIin
add wave -noupdate /shra_tb/R4in
add wave -noupdate /shra_tb/R3in
add wave -noupdate /shra_tb/R7in
add wave -noupdate /shra_tb/R5in
add wave -noupdate /shra_tb/R2in
add wave -noupdate /shra_tb/R6in
add wave -noupdate /shra_tb/clock
add wave -noupdate /shra_tb/clear
add wave -noupdate /shra_tb/Mdatain
add wave -noupdate /shra_tb/Present_state
add wave -noupdate -radix binary /shra_tb/SHRA_DUT/R3/BusMuxIn
add wave -noupdate /shra_tb/SHRA_DUT/R3/enable
add wave -noupdate /shra_tb/SHRA_DUT/R4/BusMuxIn
add wave -noupdate /shra_tb/SHRA_DUT/R4/enable
add wave -noupdate -radix hexadecimal /shra_tb/SHRA_DUT/R7/BusMuxIn
add wave -noupdate /shra_tb/SHRA_DUT/R7/enable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 261
configure wave -valuecolwidth 255
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
WaveRestoreZoom {399050 ps} {399618 ps}
