onerror {quit -f}
vlib work
vlog -work work unidade_aritmetica.vo
vlog -work work unidade_aritmetica.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.unidade_aritmetica_vlg_vec_tst
vcd file -direction unidade_aritmetica.msim.vcd
vcd add -internal unidade_aritmetica_vlg_vec_tst/*
vcd add -internal unidade_aritmetica_vlg_vec_tst/i1/*
add wave /*
run -all
