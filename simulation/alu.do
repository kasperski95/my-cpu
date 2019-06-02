onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate {/\alu.test\/CARRY}
add wave -noupdate {/\alu.test\/LOAD_FLAGS}
add wave -noupdate {/\alu.test\/CLOCK}
add wave -noupdate {/\alu.test\/INPUT_A}
add wave -noupdate {/\alu.test\/INPUT_B}
add wave -noupdate {/\alu.test\/ACTION_ID}
add wave -noupdate {/\alu.test\/ZERO}
add wave -noupdate {/\alu.test\/SIGN}
add wave -noupdate /\\alu.test\\/\\OUT\\
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1174 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 198
configure wave -valuecolwidth 40
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
WaveRestoreZoom {0 ps} {2740 ps}
