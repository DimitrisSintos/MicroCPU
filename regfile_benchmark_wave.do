onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix ascii /MCPU_regfile_benchmark/cpuinst/STATE_AS_STR
add wave -noupdate /MCPU_regfile_benchmark/cpuinst/pc
add wave -noupdate /MCPU_regfile_benchmark/cpuinst/opcode
add wave -noupdate /MCPU_regfile_benchmark/cpuinst/operand1
add wave -noupdate /MCPU_regfile_benchmark/cpuinst/operand2
add wave -noupdate /MCPU_regfile_benchmark/cpuinst/operand3
add wave -noupdate /MCPU_regfile_benchmark/cpuinst/regset_cmd
add wave -noupdate /MCPU_regfile_benchmark/cpuinst/regset_wb
add wave -noupdate /MCPU_regfile_benchmark/cpuinst/regdatatoload
add wave -noupdate /MCPU_regfile_benchmark/cpuinst/RegOp1
add wave -noupdate -radix unsigned -childformat {{{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[15]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[14]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[13]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[12]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[11]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[10]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[9]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[8]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[7]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[6]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[5]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[4]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[3]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[2]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[1]} -radix unsigned} {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[0]} -radix unsigned}} -expand -subitemconfig {{/MCPU_regfile_benchmark/cpuinst/regfileinst/R[15]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[14]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[13]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[12]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[11]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[10]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[9]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[8]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[7]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[6]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[5]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[4]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[3]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[2]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[1]} {-radix unsigned} {/MCPU_regfile_benchmark/cpuinst/regfileinst/R[0]} {-radix unsigned}} /MCPU_regfile_benchmark/cpuinst/regfileinst/R
add wave -noupdate /MCPU_regfile_benchmark/cpuinst/raminst/mem
add wave -noupdate -radix unsigned {/MCPU_regfile_benchmark/cpuinst/raminst/mem[20]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {981 ps} 0}
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
WaveRestoreZoom {691 ps} {1227 ps}
