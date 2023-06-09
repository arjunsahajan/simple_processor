onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk_50MHz /simple_processor_tb/uut/clk_50MHz
add wave -noupdate -label run /simple_processor_tb/uut/run
add wave -noupdate -label reset_n /simple_processor_tb/uut/reset_n
add wave -noupdate -label DIN /simple_processor_tb/uut/DIN
add wave -noupdate -label done /simple_processor_tb/uut/done
add wave -noupdate -label IR_out /simple_processor_tb/uut/IR_out
add wave -noupdate -label R0_out /simple_processor_tb/uut/R0_out
add wave -noupdate -label R1_out /simple_processor_tb/uut/R1_out
add wave -noupdate -label mux_out /simple_processor_tb/uut/mux_out
add wave -noupdate -label sum /simple_processor_tb/uut/sum
add wave -noupdate -label sel /simple_processor_tb/uut/sel
add wave -noupdate -label IR_in /simple_processor_tb/uut/IR_in
add wave -noupdate -label RX_in /simple_processor_tb/uut/RX_in
add wave -noupdate -label A_in /simple_processor_tb/uut/A_in
add wave -noupdate -label G_in /simple_processor_tb/uut/G_in
add wave -noupdate -label A_out /simple_processor_tb/uut/A_out
add wave -noupdate -label G_out /simple_processor_tb/uut/G_out
add wave -noupdate -label clk_addr /simple_processor_tb/uut/clk_addr
add wave -noupdate -label addr /simple_processor_tb/uut/addr

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 200
configure wave -valuecolwidth 200
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
WaveRestoreZoom {0 ps} {120 ns}
