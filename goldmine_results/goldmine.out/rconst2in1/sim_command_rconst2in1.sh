#!/bin/bash

iverilog -g2001 -osimv -s rconst2in1_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rconst2in1/rconst2in1_bench.v /data/vpulav2/Work/GoldMine/verilog/crypto_core_sha3_keccak/rconst2in1.v  -I/data/vpulav2/Work/GoldMine/verilog/crypto_core_sha3_keccak