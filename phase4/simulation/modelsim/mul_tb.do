onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /multiplication_tb/PCout
add wave -noupdate /multiplication_tb/ZHighout
add wave -noupdate /multiplication_tb/ZLowOut
add wave -noupdate /multiplication_tb/MDRout
add wave -noupdate /multiplication_tb/R4out
add wave -noupdate /multiplication_tb/R3out
add wave -noupdate /multiplication_tb/R7out
add wave -noupdate /multiplication_tb/R5out
add wave -noupdate /multiplication_tb/R2out
add wave -noupdate /multiplication_tb/R6out
add wave -noupdate /multiplication_tb/MARin
add wave -noupdate /multiplication_tb/ZHighIn
add wave -noupdate /multiplication_tb/ZLowIn
add wave -noupdate /multiplication_tb/PCin
add wave -noupdate /multiplication_tb/MDRin
add wave -noupdate /multiplication_tb/IRin
add wave -noupdate /multiplication_tb/IRout
add wave -noupdate /multiplication_tb/Yin
add wave -noupdate /multiplication_tb/Yout
add wave -noupdate /multiplication_tb/IncPC
add wave -noupdate /multiplication_tb/Read
add wave -noupdate /multiplication_tb/MARout
add wave -noupdate /multiplication_tb/R4in
add wave -noupdate /multiplication_tb/R3in
add wave -noupdate /multiplication_tb/R7in
add wave -noupdate /multiplication_tb/R5in
add wave -noupdate /multiplication_tb/R2in
add wave -noupdate /multiplication_tb/R6in
add wave -noupdate /multiplication_tb/clock
add wave -noupdate /multiplication_tb/clear
add wave -noupdate -radix hexadecimal /multiplication_tb/Mdatain
add wave -noupdate /multiplication_tb/Present_state
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/RZHi/BusMuxOut
add wave -noupdate /multiplication_tb/MUL_DUT/RZHi/enable
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/RZHi/BusMuxIn
add wave -noupdate /multiplication_tb/MUL_DUT/RZLo/enable
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/RZLo/BusMuxIn
add wave -noupdate /multiplication_tb/MUL_DUT/RY/enable
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/RY/BusMuxIn
add wave -noupdate /multiplication_tb/MUL_DUT/HI/enable
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/HI/BusMuxIn
add wave -noupdate /multiplication_tb/MUL_DUT/LO/enable
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/LO/BusMuxIn
add wave -noupdate /multiplication_tb/MUL_DUT/IR/enable
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/IR/BusMuxIn
add wave -noupdate /multiplication_tb/MUL_DUT/R2/enable
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/R2/BusMuxIn
add wave -noupdate /multiplication_tb/MUL_DUT/R6/enable
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/R6/BusMuxIn
add wave -noupdate /multiplication_tb/MUL_DUT/ALU/mul_unit/clk
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/ALU/mul_unit/RA
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/ALU/mul_unit/RB
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/ALU/mul_unit/RZ
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/ALU/mul_unit/product
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/ALU/mul_unit/multiplicand
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/ALU/mul_unit/multiplier
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/ALU/mul_unit/neg_multiplicand
add wave -noupdate /multiplication_tb/MUL_DUT/ALU/mul_unit/neg_sign_ext
add wave -noupdate /multiplication_tb/MUL_DUT/ALU/mul_unit/pos_sign_ext
add wave -noupdate /multiplication_tb/MUL_DUT/ALU/mul_unit/prev_bit
add wave -noupdate /multiplication_tb/MUL_DUT/ALU/mul_unit/i
add wave -noupdate /multiplication_tb/MUL_DUT/ALU/mul_unit/booth_code
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/RZHi/BusMuxIn
add wave -noupdate /multiplication_tb/MUL_DUT/RZHi/enable
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/RZLo/BusMuxIn
add wave -noupdate /multiplication_tb/MUL_DUT/RZLo/enable
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/HI/BusMuxIn
add wave -noupdate /multiplication_tb/MUL_DUT/HI/enable
add wave -noupdate -radix hexadecimal /multiplication_tb/MUL_DUT/LO/BusMuxIn
add wave -noupdate /multiplication_tb/MUL_DUT/LO/enable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {238671 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 326
configure wave -valuecolwidth 381
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
WaveRestoreZoom {0 ps} {527552 ps}
