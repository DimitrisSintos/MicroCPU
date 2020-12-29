onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix ascii /MCPU_regfile_benchmark_B/cpuinst/STATE_AS_STR
add wave -noupdate -radix unsigned /MCPU_regfile_benchmark_B/cpuinst/pc
add wave -noupdate /MCPU_regfile_benchmark_B/cpuinst/opcode
add wave -noupdate /MCPU_regfile_benchmark_B/cpuinst/operand1
add wave -noupdate /MCPU_regfile_benchmark_B/cpuinst/operand2
add wave -noupdate /MCPU_regfile_benchmark_B/cpuinst/operand3
add wave -noupdate /MCPU_regfile_benchmark_B/cpuinst/regset_cmd
add wave -noupdate /MCPU_regfile_benchmark_B/cpuinst/regset_wb
add wave -noupdate -radix unsigned /MCPU_regfile_benchmark_B/cpuinst/regdatatoload
add wave -noupdate /MCPU_regfile_benchmark_B/cpuinst/RegOp1
add wave -noupdate -childformat {{{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[15]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[14]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[13]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[12]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[11]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[10]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[9]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[8]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[7]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[6]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[5]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[4]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[3]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[2]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[1]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[0]} -radix unsigned}} -expand -subitemconfig {{/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[15]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[14]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[13]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[12]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[11]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[10]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[9]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[8]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[7]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[6]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[5]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[4]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[3]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[2]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[1]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/regfileinst/R[0]} {-height 15 -radix unsigned}} /MCPU_regfile_benchmark_B/cpuinst/regfileinst/R
add wave -noupdate -radix unsigned {/MCPU_regfile_benchmark_B/cpuinst/raminst/mem[101]}
add wave -noupdate -radix unsigned {/MCPU_regfile_benchmark_B/cpuinst/raminst/mem[100]}
add wave -noupdate -childformat {{{/MCPU_regfile_benchmark_B/cpuinst/raminst/mem[101]} -radix unsigned} {{/MCPU_regfile_benchmark_B/cpuinst/raminst/mem[100]} -radix unsigned}} -subitemconfig {{/MCPU_regfile_benchmark_B/cpuinst/raminst/mem[101]} {-height 15 -radix unsigned} {/MCPU_regfile_benchmark_B/cpuinst/raminst/mem[100]} {-height 15 -radix unsigned}} /MCPU_regfile_benchmark_B/cpuinst/raminst/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {45 ps} 0}
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
WaveRestoreZoom {0 ps} {662 ps}
