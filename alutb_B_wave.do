onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /MCPU_Alutb_B/opcode
add wave -noupdate -radix unsigned /MCPU_Alutb_B/r1
add wave -noupdate -radix unsigned /MCPU_Alutb_B/r2
add wave -noupdate -radix unsigned /MCPU_Alutb_B/out
add wave -noupdate /MCPU_Alutb_B/OVERFLOW
add wave -noupdate -radix unsigned /MCPU_Alutb_B/result
add wave -noupdate /MCPU_Alutb_B/carry
add wave -noupdate /MCPU_Alutb_B/iscorrect
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {93 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {172 ps}
