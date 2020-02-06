onerror {quit -f}
vlib work
vlog -work work fpga.vo
vlog -work work fpga.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.fpga_vlg_vec_tst
vcd file -direction fpga.msim.vcd
vcd add -internal fpga_vlg_vec_tst/*
vcd add -internal fpga_vlg_vec_tst/i1/*
add wave /*
run -all
