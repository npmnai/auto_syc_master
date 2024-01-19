# PARAM_DESCRIPTIONS
# $SCE INPUT FILE ../data/input.txt
# $SCE OUTPUT FILE ../results/python/output*.txt
##


f1=open("../data/input.txt","r+")
line=f1.read()

for i in range(100):
     output="../results/python/output"+str(i)+".txt"
     f2=open(output,"w+")
     f2.write(line + "\n")
     f2.close()
     
f1.close()