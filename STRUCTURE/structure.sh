#!/bin/bash
#SBATCH -c 1
#SBATCH --mem=5g
#SBATCH -t 14-0:0:0
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=15pl16@queensu.ca
module load structure
structure -m mainparams_k1 -e extraparams_nolocprior -K 1
structure -m mainparams_k2 -e extraparams_nolocprior -K 2
structure -m mainparams_k3 -e extraparams_nolocprior -K 3
