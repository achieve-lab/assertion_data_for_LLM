#!/bin/bash

iverilog -g2001 -osimv -s qadd_tf_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/qadd_tf/qadd_tf_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fixed_point_arithmetic_modules/qadd_tf.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fixed_point_arithmetic_modules