onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /not_tb/PCout
add wave -noupdate /not_tb/ZHighout
add wave -noupdate /not_tb/ZLowOut
add wave -noupdate /not_tb/MDRout
add wave -noupdate /not_tb/R4out
add wave -noupdate /not_tb/R3out
add wave -noupdate /not_tb/R7out
add wave -noupdate /not_tb/R5out
add wave -noupdate /not_tb/MARin
add wave -noupdate /not_tb/ZHighIn
add wave -noupdate /not_tb/ZLowIn
add wave -noupdate /not_tb/PCin
add wave -noupdate /not_tb/MDRin
add wave -noupdate /not_tb/IRin
add wave -noupdate /not_tb/IRout
add wave -noupdate /not_tb/Yin
add wave -noupdate /not_tb/Yout
add wave -noupdate /not_tb/IncPC
add wave -noupdate /not_tb/Read
add wave -noupdate /not_tb/MARout
add wave -noupdate /not_tb/R4in
add wave -noupdate /not_tb/R3in
add wave -noupdate /not_tb/R7in
add wave -noupdate /not_tb/R5in
add wave -noupdate /not_tb/clock
add wave -noupdate /not_tb/clear
add wave -noupdate /not_tb/Mdatain
add wave -noupdate /not_tb/Present_state
add wave -noupdate /not_tb/ADD_DUT/R5/clear
add wave -noupdate /not_tb/ADD_DUT/R5/clock
add wave -noupdate /not_tb/ADD_DUT/R5/enable
add wave -noupdate /not_tb/ADD_DUT/R5/BusMuxOut
add wave -noupdate /not_tb/ADD_DUT/R5/BusMuxIn
add wave -noupdate /not_tb/ADD_DUT/R5/q
add wave -noupdate /not_tb/ADD_DUT/Bus/BusMuxOut
add wave -noupdate /not_tb/ADD_DUT/Bus/BusMuxControl
add wave -noupdate /not_tb/ADD_DUT/ALU/notb/Ra
add wave -noupdate /not_tb/ADD_DUT/ALU/notb/Rz
add wave -noupdate /not_tb/ADD_DUT/ALU/RB
add wave -noupdate /not_tb/ADD_DUT/RZLo/BusMuxIn
add wave -noupdate /not_tb/ADD_DUT/RZLo/enable
add wave -noupdate /not_tb/ADD_DUT/ALU/ResultLo
add wave -noupdate /not_tb/ADD_DUT/RZLo/enable
add wave -noupdate /not_tb/ADD_DUT/IR/BusMuxIn
add wave -noupdate /not_tb/ADD_DUT/IR/enable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {114365 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 273
configure wave -valuecolwidth 234
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
WaveRestoreZoom {86546 ps} {164670 ps}
