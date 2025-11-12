#!/bin/bash
#SBATCH --mem=100g
#SBATCH --cpus-per-task=8

#Script to aggregate all cellranger outputs for CTRL and PD separately
#Usage: sbatch aggregate.sh [PD or CTRL]

module load cellranger

group=$1
ID="${group}_aggr"
CSV="../resources/aggr_${group}.csv"
cellranger aggr --id=$ID --csv=$CSV --nosecondary
