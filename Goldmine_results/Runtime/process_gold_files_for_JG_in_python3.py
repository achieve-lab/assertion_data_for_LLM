import re

file_path2 = list()
##/phasecomparator/verif/prism/Lead/Lead.gold\n
with open('./allgold_arb2.txt','r+') as file:
    file_path = file.readlines()
    #print(file_path)
   
for i in range(len(file_path)):
    x = file_path[i].strip('\n').split("/")
    converted_file_name = x[-1].replace(".gold","_filtered.gold")
    new_path = "/".join(x[:-2]) + "/" + converted_file_name
    #print(new_path)
    file_path2.append(new_path)
#filepath = "/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bitRam/verif/prism/bitRamOut/bitRamOut.gold"
#filepath_2 = "/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bitRam/verif/prism/bitRamOut/filtered.gold"

#line = "a22: (state) |-> (req1)\n"
for i in range(len(file_path)):   
    with open(file_path[i].strip("\n"),'r+') as in_file,  open(file_path2[i],'w') as out_file:
        x = in_file.readlines()
        pattern = re.compile(r"^a\d+")
        for i in x:
            if pattern.match(i):
                parts = i.strip("\n").split(":")
                #print(parts)
                out_file.write("property " + parts[0] + ";\n")
                out_file.write("@(posedge clk)" + parts[1] + ";\n")
                out_file.write("endproperty\n")
                out_file.write("assert_" + parts[0] + ": assert property(" + parts[0] + ");\n\n")
                #out_file.write(i)
    
