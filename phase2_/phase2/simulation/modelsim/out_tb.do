onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /out_tb/PCout
add wave -noupdate /out_tb/ZHighout
add wave -noupdate /out_tb/ZLowOut
add wave -noupdate /out_tb/MDRout
add wave -noupdate /out_tb/Gra
add wave -noupdate /out_tb/Grb
add wave -noupdate /out_tb/Grc
add wave -noupdate /out_tb/BAout
add wave -noupdate /out_tb/Rin
add wave -noupdate /out_tb/Rout
add wave -noupdate /out_tb/MARin
add wave -noupdate /out_tb/ZHighIn
add wave -noupdate /out_tb/ZLowIn
add wave -noupdate /out_tb/PCin
add wave -noupdate /out_tb/MDRin
add wave -noupdate /out_tb/IRin
add wave -noupdate /out_tb/IRout
add wave -noupdate /out_tb/Yin
add wave -noupdate /out_tb/Yout
add wave -noupdate /out_tb/IncPC
add wave -noupdate /out_tb/Read
add wave -noupdate /out_tb/Write
add wave -noupdate /out_tb/MARout
add wave -noupdate /out_tb/LOin
add wave -noupdate /out_tb/HIin
add wave -noupdate /out_tb/RCout
add wave -noupdate /out_tb/R2in
add wave -noupdate /out_tb/R1in
add wave -noupdate /out_tb/R5in
add wave -noupdate /out_tb/R6in
add wave -noupdate /out_tb/CONin
add wave -noupdate /out_tb/clock
add wave -noupdate /out_tb/clear
add wave -noupdate /out_tb/OutPortIn
add wave -noupdate /out_tb/InPortIn
add wave -noupdate /out_tb/Present_state
add wave -noupdate -radix hexadecimal /out_tb/OUT_DUT/R6/BusMuxIn
add wave -noupdate /out_tb/OUT_DUT/R6/enable
add wave -noupdate -radix hexadecimal /out_tb/OUT_DUT/outputPort/BusMuxIn
add wave -noupdate /out_tb/OUT_DUT/outputPort/enable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 189
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
WaveRestoreZoom {0 ps} {196618 ps}
