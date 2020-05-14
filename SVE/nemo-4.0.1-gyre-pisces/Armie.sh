#!/usr/bin/env bash

set -xue -o pipefail
export LLVM_MC=/ccc/products/arm-fortran-compiler-20.0.1/system/default/llvm-bin/llvm-mc

export EXEC="./nemo "
rm -f *.log
rm -f *.txt

for VL in 128 256 384 512 768 1024 1536 2048  ;do echo $VL; armie -msve-vector-bits=$VL  -i libinscount_emulated.so -a -roi $EXEC > inscount-$VL.txt;
##################################


armie -msve-vector-bits=$VL -i libopcodes_emulated.so -a -roi $EXEC  > NEON-$VL.txt;
awk '{print $3}' undecoded*.log  | enc2instr.py  -mattr=+sve | awk -F: '{print $2}' | paste undecoded*.log  /dev/stdin > SVE-$VL.txt;

echo "Total SVE" > SVEops-$VL.txt;
cat SVE-$VL.txt  | awk '{ print $1 }'| sort | awk '{s+=$1} END {print s}' >> SVEops-$VL.txt;

echo "number of ld*" >> SVEops-$VL.txt;
cat SVE-$VL.txt  | grep ld | awk '{ print $1 }'| sort | awk '{s+=$1} END {print s}' >> SVEops-$VL.txt;
echo "number of st*" >> SVEops-$VL.txt;
cat SVE-$VL.txt  | grep st | awk '{ print $1 }'| sort | awk '{s+=$1} END {print s}' >> SVEops-$VL.txt;
echo "number of mov*" >> SVEops-$VL.txt;
cat SVE-$VL.txt  | grep mov | awk '{ print $1 }'| sort | awk '{s+=$1} END {print s}' >> SVEops-$VL.txt;
echo "number of fm*" >> SVEops-$VL.txt;
cat SVE-$VL.txt  | grep f | awk '{ print $1 }'| sort | awk '{s+=$1} END {print s}' >> SVEops-$VL.txt;




echo "Total NEON" > NEONops-$VL.txt;
cat NEON-$VL.txt  | awk '{ print $1 }'| sort | awk '{s+=$1} END {print s}' >> NEONops-$VL.txt;

echo "number of ld*" >> NEONops-$VL.txt;
cat NEON-$VL.txt  | grep st | awk '{ print $1 }'| sort | awk '{s+=$1} END {print s}' >> NEONops-$VL.txt;
echo "number of st*" >> NEONops-$VL.txt;
cat NEON-$VL.txt  | grep ld | awk '{ print $1 }'| sort | awk '{s+=$1} END {print s}' >> NEONops-$VL.txt;
echo "number of mov*" >> NEONops-$VL.txt;
cat NEON-$VL.txt  | grep mov | awk '{ print $1 }'| sort | awk '{s+=$1} END {print s}' >> NEONops-$VL.txt;
echo "number of fm*" >> NEONops-$VL.txt;
cat NEON-$VL.txt  | grep f | awk '{ print $1 }'| sort | awk '{s+=$1} END {print s}' >> NEONops-$VL.txt;



#############################################################

rm -f *.log
armie -e libmemtrace_sve_$VL.so -i libmemtrace_emulated.so -a -roi $EXEC;
./merge  -o merge.log memtrace*.log sve-memtrace*log;
./bundle -v $VL merge.log >> bundle-$VL.txt;
./analyze -v $VL  merge.log > analyze-$VL.txt;

#armie -msve-vector-bits=$VL -i libmeminstrace_emulated.so -a -roi $EXEC 
#./flops_byte.py meminstrace*log $VL

done;
###################


