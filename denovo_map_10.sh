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
-s ./97.fq \
-s ./60.fq \
-s ./45.fq \
-s ./85.fq \
-s ./37.fq \
-s ./45.fq \
-s ./32.fq \
-s ./25.fq \
-s ./15.fq \
-s ./42.fq \
-s ./810.fq \
-s ./757.fq \
-s ./726.fq \
-s ./743.fq \
-s ./869.fq \
-s ./724.fq \
-s ./755.fq \
-s ./792.fq \
-s ./761.fq \
-s ./732.fq \
-O ./popmap_10.txt -o ./denovotest_10 -m 5 -M 3 -n 3 -b 1 -S -T 4
