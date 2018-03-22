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
-s ./84.fq \
-s ./79.fq \
-s ./77.fq \
-s ./71.fq \
-s ./92.fq \
-s ./39.fq \
-s ./31.fq \
-s ./34.fq \
-s ./84.fq \
-s ./96.fq \
-s ./45.fq \
-s ./81.fq \
-s ./88.fq \
-s ./16.fq \
-s ./31.fq \
-s ./72.fq \
-s ./87.fq \
-s ./100.fq \
-s ./78.fq \
-s ./46.fq \
-s ./93.fq \
-s ./43.fq \
-s ./15.fq \
-s ./76.fq \
-s ./41.fq \
-s ./753.fq \
-s ./850.fq \
-s ./763.fq \
-s ./731.fq \
-s ./742.fq \
-s ./L_627.fq \
-s ./726.fq \
-s ./728.fq \
-s ./730.fq \
-s ./723.fq \
-s ./724.fq \
-s ./850.fq \
-s ./851.fq \
-s ./730.fq \
-s ./761.fq \
-s ./1007.fq \
-s ./758.fq \
-s ./729.fq \
-s ./777.fq \
-s ./761.fq \
-s ./833.fq \
-s ./763.fq \
-s ./793.fq \
-s ./833.fq \
-s ./1007.fq \
-O ./popmap_25.txt -o ./denovotest_25 -m 5 -M 3 -n 3 -b 1 -S -T 4
