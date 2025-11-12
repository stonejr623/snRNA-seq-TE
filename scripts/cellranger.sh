#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --cpus-per-task=8
#SBATCH --mem=500g
#SBATCH --gres=lscratch:250
#SBATCH --partition=largemem

## uncomment the following line if encountering 'resource unavailable' errors
## despite using --localcores and --localmem
ulimit -u 10240 -n 16384


module load cellranger

sampleID=$1
sample_dir="/data/Nath_Parkinsons/raw_data/single_cell_PD/${sampleID}"

#in case there was a previous run delete the directory
rm -rf $sampleID

cellranger count --id $sampleID \
        --fastqs $sample_dir \
	--sample $sampleID \
        --include-introns=false \
	--create-bam=true \
        --transcriptome="/data/Nath_Parkinsons/cellranger_TE/GRCh38_GCv35_TE/" \
        --localcores=12 \
	--localmem=490
