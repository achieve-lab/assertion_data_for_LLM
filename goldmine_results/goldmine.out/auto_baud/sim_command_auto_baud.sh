#!/bin/bash

iverilog -g2001 -osimv -s auto_baud_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/auto_baud/auto_baud_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_automatic_baud_rate_generator/auto_baud.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_automatic_baud_rate_generator