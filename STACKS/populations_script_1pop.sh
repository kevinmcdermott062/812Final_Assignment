#!/bin/bash
#SBATCH -J population
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem=3g
#SBATCH -t 14-0:0:0
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=15pl16@queensu.ca
#SBATCH -o output_population%j.o
populations -P ./output/ -M ./popmap_1pop -r 0.7 --max_obs_het 0.6 --min_maf 0.01 --write_single_snp --genepop --vcf_haplotypes --fasta --fasta_strict --vcf
