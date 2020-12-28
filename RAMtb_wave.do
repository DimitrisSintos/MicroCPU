onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MPCPU_Ramtb/we
add wave -noupdate /MPCPU_Ramtb/re
add wave -noupdate /MPCPU_Ramtb/addr
add wave -noupdate /MPCPU_Ramtb/datawr
add wave -noupdate /MPCPU_Ramtb/instraddr
add wave -noupdate /MPCPU_Ramtb/datard
add wave -noupdate /MPCPU_Ramtb/instrrd
add wave -noupdate /MPCPU_Ramtb/ramcontrollerinst/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {51 ps} 0}
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
WaveRestoreZoom {0 ps} {1 ns}
