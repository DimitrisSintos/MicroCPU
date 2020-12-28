onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /MCPU_Alutb_A/opcode
add wave -noupdate -radix unsigned -childformat {{{/MCPU_Alutb_A/r1[1]} -radix unsigned} {{/MCPU_Alutb_A/r1[0]} -radix unsigned}} -subitemconfig {{/MCPU_Alutb_A/r1[1]} {-height 15 -radix unsigned} {/MCPU_Alutb_A/r1[0]} {-height 15 -radix unsigned}} /MCPU_Alutb_A/r1
add wave -noupdate -radix unsigned -childformat {{{/MCPU_Alutb_A/r2[1]} -radix unsigned} {{/MCPU_Alutb_A/r2[0]} -radix unsigned}} -subitemconfig {{/MCPU_Alutb_A/r2[1]} {-height 15 -radix unsigned} {/MCPU_Alutb_A/r2[0]} {-height 15 -radix unsigned}} /MCPU_Alutb_A/r2
add wave -noupdate /MCPU_Alutb_A/out
add wave -noupdate -radix binary /MCPU_Alutb_A/OVERFLOW
add wave -noupdate /MCPU_Alutb_A/result
add wave -noupdate /MCPU_Alutb_A/carry
add wave -noupdate /MCPU_Alutb_A/iscorrect
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {15 ps} 0}
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
WaveRestoreZoom {0 ps} {56 ps}
