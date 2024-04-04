#!/bin/bash

#SBATCH -p stats.p
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 04:00:00
#SBATCH --mem=3G
#SBATCH --error=log/%x.%A.err
#SBATCH --out=log/%x.%A.out

cd /home/abakis/git/covid-SEIHR-county

Rscript scripts/make_figures.R
