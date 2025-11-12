#!/bin/bash
#Script to run cellranger on all files by SRA accession, submitting a new job for each file

mapfile -t acclist < "../resources/acclist.txt"

for SRR in "${acclist[@]}"; do
	sbatch cellranger.sh "$SRR"
done
