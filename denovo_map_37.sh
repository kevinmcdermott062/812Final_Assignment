#!/bin/bash
#SBATCH -J denovo_map_37
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem=40g
#SBATCH -t 14-0:0:0
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=kevin.mcdermott@oahpp.ca
#SBATCH -o output_denovo_map_37%j.o

module load stacks/1.46

denovo_map.pl \
-s ./850.fq \
-s ./30.fq \
-s ./78.fq \
-s ./756.fq \
-s ./79.fq \
-s ./40.fq \
-s ./756.fq \
-s ./36.fq \
-s ./741.fq \
-s ./71.fq \
-s ./28.fq \
-s ./755.fq \
-s ./99.fq \
-s ./36.fq \
-s ./794.fq \
-s ./741.fq \
-s ./731.fq \
-s ./73.fq \
-s ./810.fq \
-s ./761.fq \
-s ./760.fq \
-s ./81.fq \
-s ./755.fq \
-s ./80.fq \
-s ./1007.fq \
-s ./743.fq \
-s ./76.fq \
-s ./85.fq \
-s ./89.fq \
-s ./732.fq \
-s ./27.fq \
-s ./89.fq \
-s ./28.fq \
-s ./868.fq \
-s ./99.fq \
-s ./32.fq \
-s ./49.fq \
-O ./popmap_37.txt -o ./denovotest_37 -m 5 -M 3 -n 3 -b 1 -S -T 4
