# snRNA-seq-TE
Quantification of genes and transposable elements in single nucleus RNA-sequencing data

This repository re-analyzes the 2024 study "Unravelling cell type-specific responses to Parkinson’s Disease at single cell resolution" by Martirosyan et. al. to investigate the role of transposable elements, and specifically HERV-K (HML2) in Parkinson's Disease pathology. Data used in this analysis is publically accessible at GEO: GSE243639.

This end-to-end analysis encompasses all steps of the processing pipeline from quality control to clustering and differential expression analysis. Transposable elements were detected using a TE-aware reference annotation file produced in methods similar to the modification CellRangerTE (https://github.com/mhammell-laboratory/CellRangerTE). This reference gtf can be found in the 'Resources' tab. In order to optimize detection of transposable elements, mapping parameters were adjusted to allow for multi-mapping reads and the (*GENCODE? NCBI? ENSEMBL?) telomere-to-telomere human reference genome was used.

Individual steps of this process were submitted to a SLURM scheduler for more efficient processing through an HPC. The scripts provided include both a "batch" or submission script, as well as a job-specific script. The batch scripts include the SLURM directives used to assign appropriate memory, CPUs, and time to complete the jobs within a shared node of an HPC. 

## Analysis Steps

### 1. Run Cellranger
Cellranger filters reads, aligns to a reference genome, and produces feature-barcode matrices.

` ./cellranger.sh [SAMPLE_ID]`

### 2. Output Aggregation

Aggregate control (CTRL) and Parkinson's Disease (PD) samples separately. CSV files are provided for each group in the 'Resources' tab indicating the path to the molecule H5 files which contain the feature-barcode matrices for each sample.

` ./aggregate.sh [CTRL or PD] `

### 3. Setup and Quality control
First, the H5 files and reference genome/annotation files are used to build Seurat objects. All downstream analyses will be done in Seurat in R. QC includes removing cells with high % mitochondrial reads and abnormally high number of features (potential doublets). This is done separately to ensure there are not large differences between the CTRL and PD data structures.

` setup_QC.R`

### 4. Normalization and Clustering
The merged datasets were normalized by (*NORMALIZATION METHOD) and initial broad cell-type clusters were identified using UMAP reduction. Marker genes were graphed to identify commonly found cell types in the brain: neurons, oligodendrocytes, astrocytes, microglia, oligodendrocyte-precursor cells (OPCs), T-cells, and vascular cells. 

` norm_cluster.R `

### 5. Cell Type Proportions
Overall and condition-specific cell type proportions were analyzed. A T-test was conducted to determine if any cell types had a statistically significant change in proportion between CTRL and PD groups.

` proportions.R `

### 6. Subtype Identifications
In the merged dataset, each cell type is reclustered to identify distint molecular subtypes. For each subtype, a list of DE and marker genes are generated to determine a specific cell subset (ex: dopaminergic neurons, projection neurons) or a behaviorally driven state (ex: premyelinating oligodendrocytes, stress responding oligodendrocytes). For clusters that could not be identified from markers alone, DE genes were input into a pathway analysis software providing GEO and KEGG pathway terms. The markers and/or pathway terms informing the naming of each subcluster for downstream processing are detailed in the document 'subclustering.md' in the 'resources' tab.

` subtyping.R `

### 7. DE Gene/TE Analysis
Differentially expressed genes, pathways, and transposable elements are detailed in 'de_genes.md' in the 'resources' tab. A summary file of conclusions are included in 'results_summary.md' in the 'results' tab. HERVK was found to be a subcluster-specific marker for projection and glutamatergic neurons, synapse-associated oligodendrocytes and oxidative-stressed OPCs. However, none of these subclusters have a significant differences in proportion between control and PD cohorts. HERVK was also found to be downregulated in premyelinating and stress-responding oligodendrocytes of PD vs CTRL.

For the purpose of this analysis, focusing in on dopaminergic neurons would provide the most significant evidence of TEs being involved in Parkinson's disease. While there are no significant differences in HERVK as markers or DE genes, various SINE elements were found to be downregulated in PD vs CTRL. 

**The following are the large conclusions from this analysis:**
1. There is differential expression of various cell subtypes between Parkinson's and control samples.
2. HERVs serve as markers for several of these subtypes, and are downregulated in premyelinating and stress-responding oligodendrocytes in Parkinson's.
3. Other TEs (SINE, LINE elements) are found to be differentially expressed in many of these subtypes.
