#!/bin/bash

iverilog -g2001 -osimv -s gpio_mod_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gpio_mod/gpio_mod_bench.v /data/vpulav2/Work/GoldMine/verilog/testing-verification_systemverilog_directed_test_bench/gpio_mod.v  -I/data/vpulav2/Work/GoldMine/verilog/testing-verification_systemverilog_directed_test_bench