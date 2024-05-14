#!/bin/bash

iverilog -g2001 -osimv -s rconst_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rconst/rconst_bench.v /data/vpulav2/Work/GoldMine/verilog/crypto_core_sha3_keccak/rconst.v  -I/data/vpulav2/Work/GoldMine/verilog/crypto_core_sha3_keccak