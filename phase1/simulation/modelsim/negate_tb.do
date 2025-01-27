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
add wave -noupdate /negate_tb/R4in
add wave -noupdate /negate_tb/R3in
add wave -noupdate /negate_tb/R7in
add wave -noupdate /negate_tb/R5in
add wave -noupdate /negate_tb/clock
add wave -noupdate /negate_tb/clear
add wave -noupdate -radix hexadecimal -radixshowbase 0 /negate_tb/Mdatain
add wave -noupdate -radix decimal /negate_tb/Present_state
add wave -noupdate -radix hexadecimal /negate_tb/ADD_DUT/IR/BusMuxIn
add wave -noupdate /negate_tb/ADD_DUT/IR/enable
add wave -noupdate -radix decimal /negate_tb/ADD_DUT/R5/BusMuxIn
add wave -noupdate /negate_tb/ADD_DUT/R5/enable
add wave -noupdate -radix decimal -radixshowbase 0 /negate_tb/ADD_DUT/Bus/BusMuxOut
add wave -noupdate -radix decimal -radixshowbase 0 /negate_tb/ADD_DUT/R5/BusMuxOut
add wave -noupdate -radix decimal /negate_tb/ADD_DUT/ALU/negate/not_op/Ra
add wave -noupdate -radix decimal -radixshowbase 0 /negate_tb/ADD_DUT/ALU/negate/not_op/Rz
add wave -noupdate -radix decimal /negate_tb/ADD_DUT/ALU/negate/add_op/sum
add wave -noupdate -radix hexadecimal /negate_tb/ADD_DUT/ALU/negate/add_op/RA
add wave -noupdate -radix hexadecimal -radixshowbase 0 /negate_tb/ADD_DUT/ALU/negate/add_op/RB
add wave -noupdate /negate_tb/ADD_DUT/ALU/negate/add_op/cin
add wave -noupdate /negate_tb/ADD_DUT/ALU/negate/add_op/cout
add wave -noupdate /negate_tb/ADD_DUT/ALU/negate/add_op/cout16
add wave -noupdate -radix decimal /negate_tb/ADD_DUT/RZLo/BusMuxIn
add wave -noupdate /negate_tb/ADD_DUT/RZLo/enable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {156974 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 273
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
configure wave -timelineunits ps
update
WaveRestoreZoom {49882 ps} {418428 ps}
