#!/bin/bash

iverilog -g2001 -osimv -s sha512_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/sha512/sha512_bench.v /data/vpulav2/Work/GoldMine/verilog/crypto_core_sha_cores/sha512.v  -I/data/vpulav2/Work/GoldMine/verilog/crypto_core_sha_cores