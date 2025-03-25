onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /shr_tb/PCout
add wave -noupdate /shr_tb/ZHighout
add wave -noupdate /shr_tb/ZLowOut
add wave -noupdate /shr_tb/MDRout
add wave -noupdate /shr_tb/R4out
add wave -noupdate /shr_tb/R3out
add wave -noupdate /shr_tb/R7out
add wave -noupdate /shr_tb/R5out
add wave -noupdate /shr_tb/R2out
add wave -noupdate /shr_tb/R6out
add wave -noupdate /shr_tb/MARin
add wave -noupdate /shr_tb/ZHighIn
add wave -noupdate /shr_tb/ZLowIn
add wave -noupdate /shr_tb/PCin
add wave -noupdate /shr_tb/MDRin
add wave -noupdate /shr_tb/IRin
add wave -noupdate /shr_tb/IRout
add wave -noupdate /shr_tb/Yin
add wave -noupdate /shr_tb/Yout
add wave -noupdate /shr_tb/IncPC
add wave -noupdate /shr_tb/Read
add wave -noupdate /shr_tb/MARout
add wave -noupdate /shr_tb/LOin
add wave -noupdate /shr_tb/HIin
add wave -noupdate /shr_tb/R4in
add wave -noupdate /shr_tb/R3in
add wave -noupdate /shr_tb/R7in
add wave -noupdate /shr_tb/R5in
add wave -noupdate /shr_tb/R2in
add wave -noupdate /shr_tb/R6in
add wave -noupdate /shr_tb/clock
add wave -noupdate /shr_tb/clear
add wave -noupdate -radix hexadecimal /shr_tb/Mdatain
add wave -noupdate /shr_tb/Present_state
add wave -noupdate -radix hexadecimal /shr_tb/SHR_DUT/R4/BusMuxIn
add wave -noupdate /shr_tb/SHR_DUT/R4/enable
add wave -noupdate /shr_tb/SHR_DUT/R3/enable
add wave -noupdate -radix hexadecimal /shr_tb/SHR_DUT/R3/BusMuxIn
add wave -noupdate /shr_tb/SHR_DUT/R7/enable
add wave -noupdate -radix hexadecimal /shr_tb/SHR_DUT/R7/BusMuxIn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {275455 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 242
configure wave -valuecolwidth 207
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
WaveRestoreZoom {0 ps} {284318 ps}
