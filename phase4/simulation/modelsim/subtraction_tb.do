onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /subtraction_tb/PCout
add wave -noupdate /subtraction_tb/ZHighout
add wave -noupdate /subtraction_tb/ZLowOut
add wave -noupdate /subtraction_tb/MDRout
add wave -noupdate /subtraction_tb/R4out
add wave -noupdate /subtraction_tb/R3out
add wave -noupdate /subtraction_tb/R7out
add wave -noupdate /subtraction_tb/R5out
add wave -noupdate /subtraction_tb/R2out
add wave -noupdate /subtraction_tb/R6out
add wave -noupdate /subtraction_tb/MARin
add wave -noupdate /subtraction_tb/ZHighIn
add wave -noupdate /subtraction_tb/ZLowIn
add wave -noupdate /subtraction_tb/PCin
add wave -noupdate /subtraction_tb/MDRin
add wave -noupdate /subtraction_tb/IRin
add wave -noupdate /subtraction_tb/IRout
add wave -noupdate /subtraction_tb/Yin
add wave -noupdate /subtraction_tb/Yout
add wave -noupdate /subtraction_tb/IncPC
add wave -noupdate /subtraction_tb/Read
add wave -noupdate /subtraction_tb/MARout
add wave -noupdate /subtraction_tb/LOin
add wave -noupdate /subtraction_tb/HIin
add wave -noupdate /subtraction_tb/R4in
add wave -noupdate /subtraction_tb/R3in
add wave -noupdate /subtraction_tb/R7in
add wave -noupdate /subtraction_tb/R5in
add wave -noupdate /subtraction_tb/R2in
add wave -noupdate /subtraction_tb/R6in
add wave -noupdate /subtraction_tb/clock
add wave -noupdate /subtraction_tb/clear
add wave -noupdate /subtraction_tb/Mdatain
add wave -noupdate /subtraction_tb/Present_state
add wave -noupdate /subtraction_tb/PCout
add wave -noupdate /subtraction_tb/ZHighout
add wave -noupdate /subtraction_tb/ZLowOut
add wave -noupdate /subtraction_tb/MDRout
add wave -noupdate /subtraction_tb/R4out
add wave -noupdate /subtraction_tb/R3out
add wave -noupdate /subtraction_tb/R7out
add wave -noupdate /subtraction_tb/R5out
add wave -noupdate /subtraction_tb/R2out
add wave -noupdate /subtraction_tb/R6out
add wave -noupdate /subtraction_tb/MARin
add wave -noupdate /subtraction_tb/ZHighIn
add wave -noupdate /subtraction_tb/ZLowIn
add wave -noupdate /subtraction_tb/PCin
add wave -noupdate /subtraction_tb/MDRin
add wave -noupdate /subtraction_tb/IRin
add wave -noupdate /subtraction_tb/IRout
add wave -noupdate /subtraction_tb/Yin
add wave -noupdate /subtraction_tb/Yout
add wave -noupdate /subtraction_tb/IncPC
add wave -noupdate /subtraction_tb/Read
add wave -noupdate /subtraction_tb/MARout
add wave -noupdate /subtraction_tb/LOin
add wave -noupdate /subtraction_tb/HIin
add wave -noupdate /subtraction_tb/R4in
add wave -noupdate /subtraction_tb/R3in
add wave -noupdate /subtraction_tb/R7in
add wave -noupdate /subtraction_tb/R5in
add wave -noupdate /subtraction_tb/R2in
add wave -noupdate /subtraction_tb/R6in
add wave -noupdate /subtraction_tb/clock
add wave -noupdate /subtraction_tb/clear
add wave -noupdate /subtraction_tb/Mdatain
add wave -noupdate /subtraction_tb/Present_state
add wave -noupdate -radix decimal /subtraction_tb/SUB_DUT/R4/BusMuxIn
add wave -noupdate /subtraction_tb/SUB_DUT/R4/enable
add wave -noupdate -radix decimal /subtraction_tb/SUB_DUT/R3/BusMuxIn
add wave -noupdate /subtraction_tb/SUB_DUT/R3/enable
add wave -noupdate -radix decimal /subtraction_tb/SUB_DUT/R7/BusMuxIn
add wave -noupdate /subtraction_tb/SUB_DUT/R7/enable
add wave -noupdate -radix hexadecimal /subtraction_tb/SUB_DUT/ALU/sub/RA
add wave -noupdate -radix hexadecimal /subtraction_tb/SUB_DUT/ALU/sub/RB
add wave -noupdate /subtraction_tb/SUB_DUT/ALU/sub/cin
add wave -noupdate -radix hexadecimal /subtraction_tb/SUB_DUT/ALU/sub/diff
add wave -noupdate /subtraction_tb/SUB_DUT/ALU/sub/cout
add wave -noupdate -radix hexadecimal /subtraction_tb/SUB_DUT/ALU/sub/temp
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {242277 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 278
configure wave -valuecolwidth 121
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
WaveRestoreZoom {212060 ps} {409892 ps}
