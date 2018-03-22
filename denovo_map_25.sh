#!/bin/bash
#SBATCH -J denovo_map_25
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem=20g
#SBATCH -t 14-0:0:0
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=kevin.mcdermott@oahpp.ca
#SBATCH -o output_denovo_map_25%j.o

module load stacks/1.46

denovo_map.pl \
-s ./31.fq \
-s ./743.fq \
-s ./49.fq \
-s ./96.fq \
-s ./71.fq \
-s ./82.fq \
-s ./757.fq \
-s ./19.fq \
-s ./39.fq \
-s ./60.fq \
-s ./763.fq \
-s ./39.fq \
-s ./88.fq \
-s ./731.fq \
-s ./91.fq \
-s ./19.fq \
-s ./792.fq \
-s ./776.fq \
-s ./41.fq \
-s ./75.fq \
-s ./91.fq \
-s ./42.fq \
-s ./724.fq \
-s ./47.fq \
-s ./726.fq \
-O ./popmap_25.txt -o ./denovotest_25 -m 5 -M 3 -n 3 -b 1 -S -T 4
