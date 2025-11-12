## HERVs as DE genes:
HERVK9 downregulated in A0 (disease associated)

HERVK Downregulated in O0 (premyelinating) and 02 (stress responding) oligodendrocytes

<img src="TE_analysis/DE_HERVs.png" alt="DE HERVs Table" width="500"/>


## Other DE TEs:
SINE elements (Alu, MER): 
* Upregulated in plastic projection neurons, RGCs, homeostatic structural support and perivascular astrocytes, disease associated microglia, synapse-associated, degenerating, and neuronal support oligodendrocytes, neuron-interacting OPCs, endothelial cells, and pericytes
* Downregulated in degenerating and dopaminergic neurons, disease-associated astrocytes
LINE elements: 
* Upregulated in projection neurons, homeostatic astrocytes, synapse-associated and degenerating oligodendrocytes, and endothelial cells
* Downregulated in phagocytic reactive microglia, premyelinating oligodendrocytes

<img src="TE_analysis/DE_TEs.png" alt="DE TEs Table" width="600"/>

## HERVs as markers:
* HERVH, HERVK9, HERVP71A, HERVK22, HERVL in A3 (homeostatic, structural support astrocytes)
* HERVIP10B3 in M0 (disease-associated microglia)
* HERVL, HERVK9 in N2 (classic projection neurons)
* HERVS71, HERVK, HERVL, HERVK9 in N4 (plastic projection neurons)
* HERVK, HERVH, HERVL, HERVIP10F, HERVK9 in N6 (glutamatergic neurons)
* HERVIP10FH, HERVL, HERVK in O1 (synapse-associated oligodendrocytes)
* HERVK, HERVL in O2 (oxidative stressed oligodendrocytes)
* HERV35I, HERVH in OPC0 (neuron interacting OPCs)
* HERVK9 in OPC1 (active/primed OPCs)
* HERVL in OPC2 (oxidative stressed OPCs)
* HERV17, HERVL in V2 (Vascular smooth muscle cells)

Of these subclusters, Disease-Associated Microglia and Neuron-interacting OPCs are upregulated in PD, while Active/primed OPCs are upregulated in CTRL.

<img src="TE_analysis/HERV_markers.png" alt="HERV Markers Table" width="600"/>

## Subclusters with Significant Differences
Higher in CTRL: 
* O4: TH-enriched oligodendrocytes
* N1: dopaminergic neurons
* A1: homeostatic (metabolic support) astrocytes 
* A6: reactive inflammatory astrocytes 
* M1: phagocytic reactive microglia
* M6: activated anti-inflammatory microglia 
* OP1: reactive/primed oligodendrocyte precursors 
* T1: double negative T cells

Higher in PD: 
* A0: disease-associated astrocytes
* A5: reactive anti-inflammatory astrocytes 
* M0: disease-associated microglia
* OP0: neuron-interacting oligodendrocyte precursors
* V1: pericytes
* T0: CD8 Memory T Cells

<img src="TE_analysis/DE_subclusters.png" alt="DE subclusters Table" width="400"/>

## Patterns in DE genes
By reclustering the data for meaningful subtypes and improving quality control, additional informative patterns were able to be derived from the DE genes that were not detailed in the source publication. 

KIF5C-AS1 downregulated in Parkinson’s in neurons, astrocytes, microglia, oligodendrocytes, and OPCs
* Antisense RNA (likely blocks translation of mRNA)
* If KIF5C-AS1 is downregulated in Parkinsons, KIF5C would be upregulated
* KIF5C Coding protein: Neuron specific kinesin heavy chain, related to anterograde transport of mitochondria (energy supply to axons and distal regions)
* Overexpression of KIF5A and other kinesins found in Alzheimers disease 
* In parkinsons, found buildup of healthy mitochondria on axons (without increased expression of mitochondrial genes)
   https://www.sciencedirect.com/science/article/pii/S0925443916301788 
   https://pubmed.ncbi.nlm.nih.gov/29060936/ 
* Upregulated in an attempt to clear blockages and get nutrients to distal regions, but found this BEFORE dementia in Parkinsons 
   https://pmc.ncbi.nlm.nih.gov/articles/PMC2666445/ 
* Presence of A-syn, reduces kinesin production and prevents binding of cargo to light chain, this change precedes the TH development
   https://www.nature.com/articles/s41531-025-00926-z 

Heat shock proteins upregulated in vascular cells, astrocytes, oligodendrocytes, OPCs
* Play a role in clearage of misfolded a-syn and prevent amyloid aggregation
   https://www.frontiersin.org/journals/neuroscience/articles/10.3389/fnins.2019.01124/full

SLC5A3 upregulated in astrocytes
* sodium/myoinositol cotransporter
* Promotes tumor progression, linked to chemoresistance, overexpressed in down syndrome, associated with degenerative change and inflammation in s-IBM (progressive muscle disease)
     https://www.mdpi.com/2218-273X/10/4/521

SLC38A2 upregulated in Oligodendrocytes (except in aging/nerodegenerative subcluster)
* Neutral amino acid transport, glutamine transporter
* Converts glutamate to glutamine, maintains balance
* Overactive will decrease amount of glutamine available for signaling, neuropathological consequences
     https://www.sciencedirect.com/science/article/pii/S0753332222006588

ALDH1L1 downregulated in gabaergic neurons, RGCs, antigen-presenting microglia, and reactive OPCs
* Aldehyde dehydrogenase
* Neuroprotective in Parkinson’s disease, DA neurons that degenerate are ALDH1L1 negative
   https://pubmed.ncbi.nlm.nih.gov/24865427/ 
