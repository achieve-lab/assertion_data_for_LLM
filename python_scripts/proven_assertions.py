import re
'''to be done- read jg.log, property.sva of a specific folder and give proven assertions'''
find_result = r'\b(RESULTS)\b'
input_log_file = "/data/vpulav2/Work/Jasper/Arbiter/arb2/" + "jg.log"

with open(input_log_file,"r") as file:
    x= file.read()
    text = re.split(find_result, x)[2]
    print(text)
    
