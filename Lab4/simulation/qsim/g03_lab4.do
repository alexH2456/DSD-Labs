onerror {quit -f}
vlib work
vlog -work work g03_lab4.vo
vlog -work work g03_lab4.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.g03_lab4_dealer_vlg_vec_tst
vcd file -direction g03_lab4.msim.vcd
vcd add -internal g03_lab4_dealer_vlg_vec_tst/*
vcd add -internal g03_lab4_dealer_vlg_vec_tst/i1/*
add wave /*
run -all
