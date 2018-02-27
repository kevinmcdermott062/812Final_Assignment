#!/bin/bash
#SBATCH -J populations
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=20g
#SBATCH -t 14-0:0:0
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=kevin.mcdermott@oahpp.ca
#SBATCH -o output_populations%j.o

module load stacks/1.46

populations -b 1 -P ./denovo_assembly/ -M ./popmap.txt -r 0.5 -p 2 -f p_value --p_value_cutoff 0.05 --write_random_snp --fstats \
--structure --fasta_strict --vcf --genepop --phylip --treemix -t 4

# -b is the identifier we used in denovo_map, -P is the path to the directory where the output files from denovo_map are stored
# -M id the path to the population map
# the commands -r -p and -m all depend on how strict you want your filtering to be for the output files (see help)
# -f is for the Fst values (here we are using a p value without a correction applied), --p_value_cutoff states we want a significance threshold of 0.05 (which is actually the default anyway) 
# the --write_random_snp means it will take one random snp from each locus (so if there are multiple snps on a locus you only get one, this is to try and make sure you are not using linked snps in further analyses
# You can also choose to use the first snp in a locus if you want.
# --fstats tells it to calculate f statistics
# The next line is me choosing which output formats I want (see help)
# -t is me choosing how many threads on the HPCVL (again has to match -pe shm.pe in the script)
