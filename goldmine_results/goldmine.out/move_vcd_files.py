import subprocess
import os
import shutil

with open("./vcdfiles.txt",'r') as file:
    x = file.readlines()
    #print(x)

for i in x:
    file_path = i.strip("\n")
    #print(i.strip("\n")) 
    y = i.strip("\n").strip(".").split("/")
    destination_path = "/data/vpulav2/Work/harm/verilog/" + y[1] 
    #print(file_path)
    if not os.path.exists(destination_path):
        #print(file_path)
        os.makedirs(destination_path)
        shutil.copy(file_path,destination_path)
        print("copied file", y[2])
