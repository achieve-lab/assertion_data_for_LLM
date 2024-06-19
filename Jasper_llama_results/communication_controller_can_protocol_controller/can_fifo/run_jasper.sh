
#!/bin/bash

python3 run_jasper.py FPV_can_fifo.tcl property_llama2_1shot.sva
 nice -n 10 jg -no_gui -allow_unsupported_OS -fpv FPV_can_fifo.tcl  -proj can_fifo_llama2_1shot | tee jg_llama2_1shot.out
python3 run_jasper.py FPV_can_fifo.tcl  property_llama2_5shot.sva
nice -n 10 jg -no_gui -allow_unsupported_OS -fpv FPV_can_fifo.tcl  -proj can_fifo_llama2_5shot | tee jg_llama2_5shot.out

python3 run_jasper.py FPV_can_fifo.tcl  property_llama3_1shot.sva
nice -n 10 jg -no_gui -allow_unsupported_OS -fpv FPV_can_fifo.tcl  -proj can_fifo_llama3_1shot | tee jg_llama3_1shot.out
python3 run_jasper.py FPV_can_fifo.tcl  property_llama3_5shot.sva
nice -n 10 jg -no_gui -allow_unsupported_OS -fpv FPV_can_fifo.tcl  -proj can_fifo_llama3_5shot | tee jg_llama3_5shot.out
echo "Jaspergold for Codellama2 1shot"
grep -E 'proven|cex' jg_llama2_1shot.out | awk -F: '{print $1, $2}'
echo "Jasper gold for codellama2 5-shot" 
grep -E 'proven|cex' jg_llama2_5shot.out | awk -F: '{print $1, $2}'
echo "Jasper gold for llama3 1-shot" 
grep -E 'proven|cex' jg_llama3_1shot.out | awk -F: '{print $1, $2}'
echo "Jasper gold for llama3 5-shot" 
grep -E 'proven|cex' jg_llama3_5shot.out | awk -F: '{print $1, $2}'
