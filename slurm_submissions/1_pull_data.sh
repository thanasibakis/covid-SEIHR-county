#!/bin/bash

#SBATCH -p stats.p
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 00:15:00
#SBATCH --mem=5G
#SBATCH --error=log/%x.%A.err
#SBATCH --out=log/%x.%A.out

cd /home/abakis/git/covid-SEIHR-county

Rscript scripts/pull_case_hospitalizations_data.R

sbatch --depend=afterany:$SLURM_JOB_ID slurm_submissions/2_fit_model.sh
