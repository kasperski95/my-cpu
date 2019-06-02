onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /alu_tb/clk
add wave -noupdate /alu_tb/input_a
add wave -noupdate /alu_tb/input_b
add wave -noupdate /alu_tb/action_id
add wave -noupdate /alu_tb/enable_flags
add wave -noupdate /alu_tb/carry
add wave -noupdate /alu_tb/zero
add wave -noupdate /alu_tb/sign
add wave -noupdate /alu_tb/output
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {639 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
configure wave -timelineunits ps
update
WaveRestoreZoom {428 ps} {822 ps}
