#!/bin/bash

iverilog -g2001 -osimv -s sha256_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/sha256/sha256_bench.v /data/vpulav2/Work/GoldMine/verilog/crypto_core_sha_cores/sha256.v  -I/data/vpulav2/Work/GoldMine/verilog/crypto_core_sha_cores