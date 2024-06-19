
#!/bin/bash

python3 run_jasper.py FPV_Broadcast_filter.tcl property_gpt_3.5_1shot.sva
jg -no_gui -allow_unsupported_OS -fpv FPV_Broadcast_filter.tcl  -proj Broadcast_filter_gpt_3.5_1shot | tee jg_3.5_1shot.out
python3 run_jasper.py FPV_Broadcast_filter.tcl  property_gpt_3.5_5shot.sva
jg -no_gui -allow_unsupported_OS -fpv FPV_Broadcast_filter.tcl  -proj Broadcast_filter_gpt_3.5_5shot | tee jg_3.5_5shot.out

python3 run_jasper.py FPV_Broadcast_filter.tcl  property_gpt_4o_1shot.sva
jg -no_gui -allow_unsupported_OS -fpv FPV_Broadcast_filter.tcl  -proj Broadcast_filter_gpt_4o_1shot | tee jg_4o_1shot.out
python3 run_jasper.py FPV_Broadcast_filter.tcl  property_gpt_4o_5shot.sva
jg -no_gui -allow_unsupported_OS -fpv FPV_Broadcast_filter.tcl  -proj Broadcast_filter_gpt_4o_5shot | tee jg_4o_5shot.out
echo "Jaspergold for gpt 3.5 1shot"
grep -E 'proven|cex' jg_3.5_1shot.out | awk -F: '{print $1, $2}'
echo "Jasper gold for gpt 3.5 5-shot" 
grep -E 'proven|cex' jg_3.5_5shot.out | awk -F: '{print $1, $2}'
echo "Jasper gold for gpt 4o 1-shot" 
grep -E 'proven|cex' jg_4o_1shot.out | awk -F: '{print $1, $2}'
echo "Jasper gold for gpt 4o 5-shot" 
grep -E 'proven|cex' jg_4o_5shot.out | awk -F: '{print $1, $2}'
