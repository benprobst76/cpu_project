onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /control_unit_tb/clock
add wave -noupdate /control_unit_tb/reset
add wave -noupdate /control_unit_tb/stop
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/ZHighout
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/ZLowout
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/MDRout
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/MARin
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/PCin
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/MDRin
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/Yin
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/IncPC
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/MDRread
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/HIin
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/LOin
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/HIout
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/LOout
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/ZHighIn
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/ZLowIn
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/RCout
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/RAMwrite
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/Gra
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/Grb
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/Grc
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/Rin
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/Rout
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/BAout
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/CONin
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/InPortIn
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/OutPortin
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/InPortout
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/Run
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/Clear
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/IRin
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/Reset
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/Stop
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/Bus/BusMuxOut
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/PCout
add wave -noupdate /control_unit_tb/Phase3_DUT/PC/enable
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/PC/newPC
add wave -noupdate /control_unit_tb/Phase3_DUT/MAR/enable
add wave -noupdate /control_unit_tb/Phase3_DUT/MDRreg/enable
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/RAM/data_in
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/RAM/address
add wave -noupdate /control_unit_tb/Phase3_DUT/RAM/write
add wave -noupdate /control_unit_tb/Phase3_DUT/RAM/read
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/RAM/data_out
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/RAM/temp
add wave -noupdate /control_unit_tb/Phase3_DUT/R3/enable
add wave -noupdate /control_unit_tb/Phase3_DUT/R2/enable
add wave -noupdate /control_unit_tb/Phase3_DUT/R0/enable
add wave -noupdate /control_unit_tb/Phase3_DUT/R1/enable
add wave -noupdate /control_unit_tb/Phase3_DUT/R5/enable
add wave -noupdate /control_unit_tb/Phase3_DUT/R6/enable
add wave -noupdate /control_unit_tb/Phase3_DUT/LO/enable
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/ALU/mul_unit/RA
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/ALU/mul_unit/RB
add wave -noupdate -radix hexadecimal -radixshowbase 0 /control_unit_tb/Phase3_DUT/ALU/mul_unit/product
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/ALU/mul_unit/RZ
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/RZHi/BusMuxIn
add wave -noupdate /control_unit_tb/Phase3_DUT/RZHi/enable
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/RZLo/BusMuxIn
add wave -noupdate /control_unit_tb/Phase3_DUT/RZLo/enable
add wave -noupdate /control_unit_tb/Phase3_DUT/R7/enable
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/ALU/div_unit/RA
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/ALU/div_unit/RB
add wave -noupdate /control_unit_tb/Phase3_DUT/R4/enable
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/ALU/div_unit/RZ
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/MAR/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/MDRreg/BusMuxIn
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/Clock
add wave -noupdate /control_unit_tb/Phase3_DUT/c_unit/Present_state
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/c_unit/IR
add wave -noupdate /control_unit_tb/Phase3_DUT/HI/enable
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/LO/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/HI/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R0/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R1/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R2/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R3/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R4/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R5/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R6/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R7/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R8/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R10/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R11/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R12/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R13/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R14/BusMuxIn
add wave -noupdate -radix hexadecimal /control_unit_tb/Phase3_DUT/R15/BusMuxIn
add wave -noupdate -radix hexadecimal {/control_unit_tb/Phase3_DUT/RAM/memory[84]}
add wave -noupdate -radix hexadecimal {/control_unit_tb/Phase3_DUT/RAM/memory[146]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {118829 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 298
configure wave -valuecolwidth 107
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
WaveRestoreZoom {0 ps} {433771 ps}
