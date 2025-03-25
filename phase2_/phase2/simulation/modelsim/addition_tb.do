onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /addition_tb/PCout
add wave -noupdate /addition_tb/ZHighout
add wave -noupdate /addition_tb/ZLowOut
add wave -noupdate /addition_tb/MDRout
add wave -noupdate /addition_tb/R4out
add wave -noupdate /addition_tb/R3out
add wave -noupdate /addition_tb/R7out
add wave -noupdate /addition_tb/MARin
add wave -noupdate /addition_tb/ZHighIn
add wave -noupdate /addition_tb/ZLowIn
add wave -noupdate /addition_tb/PCin
add wave -noupdate /addition_tb/MDRin
add wave -noupdate /addition_tb/IRin
add wave -noupdate /addition_tb/IRout
add wave -noupdate /addition_tb/Yin
add wave -noupdate /addition_tb/Yout
add wave -noupdate /addition_tb/IncPC
add wave -noupdate /addition_tb/Read
add wave -noupdate /addition_tb/MARout
add wave -noupdate /addition_tb/R4in
add wave -noupdate /addition_tb/R3in
add wave -noupdate /addition_tb/R7in
add wave -noupdate /addition_tb/clock
add wave -noupdate /addition_tb/clear
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/Mdatain
add wave -noupdate /addition_tb/Present_state
add wave -noupdate /addition_tb/PCout
add wave -noupdate /addition_tb/ZHighout
add wave -noupdate /addition_tb/ZLowOut
add wave -noupdate /addition_tb/MDRout
add wave -noupdate /addition_tb/R4out
add wave -noupdate /addition_tb/R3out
add wave -noupdate /addition_tb/R7out
add wave -noupdate /addition_tb/MARin
add wave -noupdate /addition_tb/ZHighIn
add wave -noupdate /addition_tb/ZLowIn
add wave -noupdate /addition_tb/PCin
add wave -noupdate /addition_tb/MDRin
add wave -noupdate /addition_tb/IRin
add wave -noupdate /addition_tb/IRout
add wave -noupdate /addition_tb/Yin
add wave -noupdate /addition_tb/Yout
add wave -noupdate /addition_tb/IncPC
add wave -noupdate /addition_tb/Read
add wave -noupdate /addition_tb/MARout
add wave -noupdate /addition_tb/R4in
add wave -noupdate /addition_tb/R3in
add wave -noupdate /addition_tb/R7in
add wave -noupdate /addition_tb/clock
add wave -noupdate /addition_tb/clear
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/Mdatain
add wave -noupdate /addition_tb/Present_state
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/BusEncoder/EncoderIn
add wave -noupdate /addition_tb/ADD_DUT/BusEncoder/EncoderOut
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/Bus/BusMuxOut
add wave -noupdate -radix decimal -radixshowbase 0 /addition_tb/ADD_DUT/Bus/BusMuxControl
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/Bus/BusMuxInR3
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/Bus/BusMuxInR7
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/Bus/BusMuxInR4
add wave -noupdate /addition_tb/ADD_DUT/R3/enable
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/R3/BusMuxIn
add wave -noupdate /addition_tb/ADD_DUT/R4/enable
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/R4/BusMuxIn
add wave -noupdate /addition_tb/ADD_DUT/R7/clear
add wave -noupdate /addition_tb/ADD_DUT/R7/clock
add wave -noupdate /addition_tb/ADD_DUT/R7/enable
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/R7/BusMuxOut
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/R7/BusMuxIn
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/R7/q
add wave -noupdate /addition_tb/ADD_DUT/ALU/ADD
add wave -noupdate /addition_tb/ADD_DUT/ALU/Op
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/ALU/adder_sum
add wave -noupdate /addition_tb/ADD_DUT/ALU/adder_cout
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/ALU/ResultLo
add wave -noupdate /addition_tb/ADD_DUT/ALU/ResultHi
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/ALU/RA
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/ALU/RB
add wave -noupdate /addition_tb/ADD_DUT/RY/enable
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/RY/BusMuxOut
add wave -noupdate /addition_tb/ADD_DUT/IR/enable
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/IR/BusMuxIn
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/ALU/adder/RA
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/ALU/adder/RB
add wave -noupdate /addition_tb/ADD_DUT/ALU/adder/cin
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/ALU/adder/sum
add wave -noupdate /addition_tb/ADD_DUT/ALU/adder/cout
add wave -noupdate /addition_tb/ADD_DUT/RZLo/enable
add wave -noupdate -radix hexadecimal -radixshowbase 0 /addition_tb/ADD_DUT/RZLo/BusMuxIn
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
WaveRestoreZoom {129411 ps} {327243 ps}
