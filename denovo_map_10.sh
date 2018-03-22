#!/bin/bash
#SBATCH -J denovo_map_10
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem=20g
#SBATCH -t 14-0:0:0
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=kevin.mcdermott@oahpp.ca
#SBATCH -o output_denovo_map_10%j.o

module load stacks/1.46

denovo_map.pl \
-s ./27.fq \
-s ./L_627.fq \
-s ./90.fq \
-s ./756.fq \
-s ./99.fq \
-s ./81.fq \
-s ./36.fq \
-s ./741.fq \
-s ./70.fq \
-s ./724.fq \
-O ./popmap_10.txt -o ./denovotest_10 -m 5 -M 3 -n 3 -b 1 -S -T 4
