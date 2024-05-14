#!/bin/bash

iverilog -g2001 -osimv -s ca_prng_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/ca_prng/ca_prng_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_cellular_automata_prng/ca_prng.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_cellular_automata_prng