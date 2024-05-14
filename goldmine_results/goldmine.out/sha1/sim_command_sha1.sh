#!/bin/bash

iverilog -g2001 -osimv -s sha1_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/sha1/sha1_bench.v /data/vpulav2/Work/GoldMine/verilog/crypto_core_sha_cores/sha1.v  -I/data/vpulav2/Work/GoldMine/verilog/crypto_core_sha_cores