#!/bin/bash
#SBATCH -J ustacks
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem=3g
#SBATCH -t 14-0:0:0
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=15pl16@queensu.ca
#SBATCH -o output_ustacks%j.o
ustacks -t fastq -f ./fqfiles/1007.fq -o output -m 3 -M 2 -i 1
ustacks -t fastq -f ./fqfiles/100.fq -o output -m 3 -M 2 -i 2
ustacks -t fastq -f ./fqfiles/14.fq -o output -m 3 -M 2 -i 3
ustacks -t fastq -f ./fqfiles/15.fq -o output -m 3 -M 2 -i 4
ustacks -t fastq -f ./fqfiles/16.fq -o output -m 3 -M 2 -i 5
ustacks -t fastq -f ./fqfiles/17.fq -o output -m 3 -M 2 -i 6
ustacks -t fastq -f ./fqfiles/18.fq -o output -m 3 -M 2 -i 7
ustacks -t fastq -f ./fqfiles/19.fq -o output -m 3 -M 2 -i 8
ustacks -t fastq -f ./fqfiles/25.fq -o output -m 3 -M 2 -i 9
ustacks -t fastq -f ./fqfiles/26.fq -o output -m 3 -M 2 -i 10
ustacks -t fastq -f ./fqfiles/27.fq -o output -m 3 -M 2 -i 11
ustacks -t fastq -f ./fqfiles/28.fq -o output -m 3 -M 2 -i 12
ustacks -t fastq -f ./fqfiles/30.fq -o output -m 3 -M 2 -i 13
ustacks -t fastq -f ./fqfiles/31.fq -o output -m 3 -M 2 -i 14
ustacks -t fastq -f ./fqfiles/32.fq -o output -m 3 -M 2 -i 15
ustacks -t fastq -f ./fqfiles/33.fq -o output -m 3 -M 2 -i 16
ustacks -t fastq -f ./fqfiles/34.fq -o output -m 3 -M 2 -i 17
ustacks -t fastq -f ./fqfiles/35.fq -o output -m 3 -M 2 -i 18
ustacks -t fastq -f ./fqfiles/36.fq -o output -m 3 -M 2 -i 19
ustacks -t fastq -f ./fqfiles/37.fq -o output -m 3 -M 2 -i 20
ustacks -t fastq -f ./fqfiles/38.fq -o output -m 3 -M 2 -i 21
ustacks -t fastq -f ./fqfiles/39.fq -o output -m 3 -M 2 -i 22
ustacks -t fastq -f ./fqfiles/40.fq -o output -m 3 -M 2 -i 23
ustacks -t fastq -f ./fqfiles/41.fq -o output -m 3 -M 2 -i 24
ustacks -t fastq -f ./fqfiles/42.fq -o output -m 3 -M 2 -i 25
ustacks -t fastq -f ./fqfiles/43.fq -o output -m 3 -M 2 -i 26
ustacks -t fastq -f ./fqfiles/44.fq -o output -m 3 -M 2 -i 27
ustacks -t fastq -f ./fqfiles/45.fq -o output -m 3 -M 2 -i 28
ustacks -t fastq -f ./fqfiles/46.fq -o output -m 3 -M 2 -i 29
ustacks -t fastq -f ./fqfiles/47.fq -o output -m 3 -M 2 -i 30
ustacks -t fastq -f ./fqfiles/48.fq -o output -m 3 -M 2 -i 31
ustacks -t fastq -f ./fqfiles/49.fq -o output -m 3 -M 2 -i 32
ustacks -t fastq -f ./fqfiles/60.fq -o output -m 3 -M 2 -i 33
ustacks -t fastq -f ./fqfiles/61.fq -o output -m 3 -M 2 -i 34
ustacks -t fastq -f ./fqfiles/70.fq -o output -m 3 -M 2 -i 35
ustacks -t fastq -f ./fqfiles/71.fq -o output -m 3 -M 2 -i 36
ustacks -t fastq -f ./fqfiles/723.fq -o output -m 3 -M 2 -i 37
ustacks -t fastq -f ./fqfiles/724.fq -o output -m 3 -M 2 -i 38
ustacks -t fastq -f ./fqfiles/725.fq -o output -m 3 -M 2 -i 39
ustacks -t fastq -f ./fqfiles/726.fq -o output -m 3 -M 2 -i 40
ustacks -t fastq -f ./fqfiles/727.fq -o output -m 3 -M 2 -i 41
ustacks -t fastq -f ./fqfiles/728.fq -o output -m 3 -M 2 -i 42
ustacks -t fastq -f ./fqfiles/729.fq -o output -m 3 -M 2 -i 43
ustacks -t fastq -f ./fqfiles/72.fq -o output -m 3 -M 2 -i 44
ustacks -t fastq -f ./fqfiles/730.fq -o output -m 3 -M 2 -i 45
ustacks -t fastq -f ./fqfiles/731.fq -o output -m 3 -M 2 -i 46
ustacks -t fastq -f ./fqfiles/732.fq -o output -m 3 -M 2 -i 47
ustacks -t fastq -f ./fqfiles/73.fq -o output -m 3 -M 2 -i 48
ustacks -t fastq -f ./fqfiles/741.fq -o output -m 3 -M 2 -i 49
ustacks -t fastq -f ./fqfiles/742.fq -o output -m 3 -M 2 -i 50
ustacks -t fastq -f ./fqfiles/743.fq -o output -m 3 -M 2 -i 51
ustacks -t fastq -f ./fqfiles/753.fq -o output -m 3 -M 2 -i 52
ustacks -t fastq -f ./fqfiles/754.fq -o output -m 3 -M 2 -i 53
ustacks -t fastq -f ./fqfiles/755.fq -o output -m 3 -M 2 -i 54 
ustacks -t fastq -f ./fqfiles/756.fq -o output -m 3 -M 2 -i 55
ustacks -t fastq -f ./fqfiles/757.fq -o output -m 3 -M 2 -i 56
ustacks -t fastq -f ./fqfiles/758.fq -o output -m 3 -M 2 -i 57
ustacks -t fastq -f ./fqfiles/75.fq -o output -m 3 -M 2 -i 58
ustacks -t fastq -f ./fqfiles/760.fq -o output -m 3 -M 2 -i 59
ustacks -t fastq -f ./fqfiles/761.fq -o output -m 3 -M 2 -i 60
ustacks -t fastq -f ./fqfiles/762.fq -o output -m 3 -M 2 -i 61
ustacks -t fastq -f ./fqfiles/763.fq -o output -m 3 -M 2 -i 62
ustacks -t fastq -f ./fqfiles/76.fq -o output -m 3 -M 2 -i 63
ustacks -t fastq -f ./fqfiles/776.fq -o output -m 3 -M 2 -i 64
ustacks -t fastq -f ./fqfiles/777.fq -o output -m 3 -M 2 -i 65
ustacks -t fastq -f ./fqfiles/77.fq -o output -m 3 -M 2 -i 66
ustacks -t fastq -f ./fqfiles/78.fq -o output -m 3 -M 2 -i 67
ustacks -t fastq -f ./fqfiles/792.fq -o output -m 3 -M 2 -i 68
ustacks -t fastq -f ./fqfiles/793.fq -o output -m 3 -M 2 -i 69
ustacks -t fastq -f ./fqfiles/794.fq -o output -m 3 -M 2 -i 70
ustacks -t fastq -f ./fqfiles/795.fq -o output -m 3 -M 2 -i 71
ustacks -t fastq -f ./fqfiles/79.fq -o output -m 3 -M 2 -i 72
ustacks -t fastq -f ./fqfiles/80.fq -o output -m 3 -M 2 -i 73
ustacks -t fastq -f ./fqfiles/810.fq -o output -m 3 -M 2 -i 74
ustacks -t fastq -f ./fqfiles/81.fq -o output -m 3 -M 2 -i 75
ustacks -t fastq -f ./fqfiles/82.fq -o output -m 3 -M 2 -i 76
ustacks -t fastq -f ./fqfiles/833.fq -o output -m 3 -M 2 -i 77
ustacks -t fastq -f ./fqfiles/84.fq -o output -m 3 -M 2 -i 78
ustacks -t fastq -f ./fqfiles/850.fq -o output -m 3 -M 2 -i 79
ustacks -t fastq -f ./fqfiles/851.fq -o output -m 3 -M 2 -i 80
ustacks -t fastq -f ./fqfiles/85.fq -o output -m 3 -M 2 -i 81
ustacks -t fastq -f ./fqfiles/868.fq -o output -m 3 -M 2 -i 82
ustacks -t fastq -f ./fqfiles/869.fq -o output -m 3 -M 2 -i 83
ustacks -t fastq -f ./fqfiles/86.fq -o output -m 3 -M 2 -i 84
ustacks -t fastq -f ./fqfiles/87.fq -o output -m 3 -M 2 -i 85
ustacks -t fastq -f ./fqfiles/88.fq -o output -m 3 -M 2 -i 86
ustacks -t fastq -f ./fqfiles/89.fq -o output -m 3 -M 2 -i 87
ustacks -t fastq -f ./fqfiles/90.fq -o output -m 3 -M 2 -i 88
ustacks -t fastq -f ./fqfiles/91.fq -o output -m 3 -M 2 -i 89
ustacks -t fastq -f ./fqfiles/92.fq -o output -m 3 -M 2 -i 90
ustacks -t fastq -f ./fqfiles/93.fq -o output -m 3 -M 2 -i 91
ustacks -t fastq -f ./fqfiles/94.fq -o output -m 3 -M 2 -i 92
ustacks -t fastq -f ./fqfiles/95.fq -o output -m 3 -M 2 -i 93
ustacks -t fastq -f ./fqfiles/96.fq -o output -m 3 -M 2 -i 94
ustacks -t fastq -f ./fqfiles/97.fq -o output -m 3 -M 2 -i 95
ustacks -t fastq -f ./fqfiles/98.fq -o output -m 3 -M 2 -i 96
ustacks -t fastq -f ./fqfiles/99.fq -o output -m 3 -M 2 -i 97
ustacks -t fastq -f ./fqfiles/L_627.fq -o output -m 3 -M 2 -i 98
