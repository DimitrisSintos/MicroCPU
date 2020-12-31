onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix ascii /MCPU_HailStone/cpuinst/STATE_AS_STR
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/pc
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/opcode
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/operand1
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/operand2
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/operand3
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/opcode
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/operand1
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/operand2
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/operand3
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/regset_cmd
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/regset_wb
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/regdatatoload
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/RegOp1
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/regfileinst/R
add wave -noupdate -radix unsigned /MCPU_HailStone/cpuinst/raminst/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ps} {1 ns}
