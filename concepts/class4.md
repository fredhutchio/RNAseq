# Bulk RNAseq analysis
# Class 4: Contextualizing results, and mods to RNAseq

## Objectives

By the end of this class,
you should be able to:
- functional analysis
- other considerations for analyzing RNAseq data
- other types of RNAseq data

## Functional analyses

So far we've discussed annotations in terms of gene names

We can use additional information about genes to help us understand the broader context of how genes are being differentially expressed

Connecting pathways/networks of genes, or categorizing the roles genes play: functional analysis

FIXME/IMAGE(?): for each of the following tools, provide a link and information identifying its approach to functional annotations

- [GSEA](https://www.gsea-msigdb.org/gsea/index.jsp)
- [GOseq](https://genomebiology.biomedcentral.com/articles/10.1186/gb-2010-11-2-r14)
- [GOrilla](http://cbl-gorilla.cs.technion.ac.il/)
- [topGO](https://bioconductor.org/packages/release/bioc/html/topGO.html)
- [amiGO](http://amigo.geneontology.org/amigo)
- [clusterProfiler](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3339379/)

## Other considerations for RNAseq data

FIXME/IMAGE(?): definition, example paper, etc for each of following (could duplicate content in SciWiki resource library)

- isoforms and alternative splicing
  - [Understanding alternative splicing: towards a cellular code](nature.com/articles/nrm1645):
    - Alternative splicing allows individual genes to generate multiple mRNAs. Many of these mRNAs encode functionally distinct protein isoforms, thereby bridging the gap between genome and proteome
    - FIG 1 is a schematic of an 'elementary alternative splicing event'
  - [Alternative Splicing: New Insights from Global Analyses](https://www.cell.com/cell/fulltext/S0092-8674(06)00817-8?_returnURL=https%3A%2F%2Flinkinghub.elsevier.com%2Fretrieve%2Fpii%2FS0092867406008178%3Fshowall%3Dtrue):
    -  of the most remarkable observations stemming from the sequencing of genomes of diverse species is that the number of protein-coding genes in an organism does not correlate with its overall cellular complexity
    -  These observations indicate that mechanisms acting to regulate and diversify gene functions must have played a major role in the evolution of specialized cell types and activities that are typically associated with complex metazoans
    -  Alternative splicing (AS), the process by which the exons of primary transcripts (pre-mRNAs) from genes can be spliced in different arrangements to produce structurally and functionally distinct mRNA and protein variants, may be one of the most extensively used mechanisms that accounts for the greater macromolecular and cellular complexity of higher eukaryotic organisms
    -  Also includes useful schematics in figures
- lincRNAs
  - [The functions and unique features of long intergenic non-coding RNA](https://www.nature.com/articles/nrm.2017.104):
    - Long intergenic non-coding RNAs (lincRNAs) are defined as autonomously transcribed non-coding RNAs longer than 200 nucleotides that do not overlap annotated coding genes
    - The existence of lincRNAs was first suggested by studies using tiling arrays across genomic sequences, which observed pervasive transcription1,2 from regions with no known coding genes
    - The small number of lincRNAs that have been functionally characterized have diverse roles, including enforcing stable and repressive chromatin states that increase or suppress transcriptional activation, orchestrating higher-order nuclear architecture, and acting as protein and RNA scaffolds and decoys
    - The transcription of lincRNAs can regulate gene neighbourhoods independently of the lincRNA transcripts themselves, suggesting the involvement of enhancer-like activity.
- SNVs
  - [SNV identification from single-cell RNA sequencing data](https://pubmed.ncbi.nlm.nih.gov/31504520/)
  - [Systematic comparative analysis of single-nucleotide variant detection methods from single-cell RNA sequencing data](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1863-4)
- RNA editing
  - [The many roles of an RNA editor](https://www.nature.com/articles/35098584):
    - RNA editing describes the changes that take place in the RNA sequence after transcription is completed. Examples include modification of cytosine to uracil or of adenine to isoleucine by deamination, or insertion and/or deletion of particular bases.
    - RNA editing is of two types: it either involves the insertion/deletion of nucleotides or their modification. The latter is the most widespread type of RNA editing, and is found both in plant organelles and in the nucleus of higher eukaryotes.
    - This review concentrates on the best-characterized types of RNA editing that are found in mammals, the conversion of cytosine (C) to uracil (U) and the conversion of adenosine (A) to inosine (I).
    - Includes schematics
- dealing with multiple species (xenografts, viruses)

## RNAseq beyond differential gene expression

FIXME/IMAGE(?): definition, example paper, etc for each of following (could duplicate content in SciWiki resource library)

- scRNAseq
  - [An Introduction to the Analysis of Single-Cell RNA-Sequencing Data](https://www.cell.com/molecular-therapy-family/methods/pdf/S2329-0501(18)30066-4.pdf)
    - High-throughput sequencing along with high-yield cell separation methods have paved the way to modern single-cell sequencing platforms such as Fluidigm C1, DropSeq, Chromium 10X, SCI-Seq, and many others
    - All rely on labeling mRNA molecules with DNA barcodes during reverse transcription and/or subsequent steps, which allows indexing of the transcripts back to their individual cells of origin. Although each method is unique in the way it separates cells and labels the mRNA molecules, they all rely on similar computational pipelines for the representation of the transcriptional profiles
    - these technologies can effectively isolate the signal from rare cell populations, which would be hidden in output from bulk cell population RNA sequencing.5–8 Moreover, the technology can be used to infer potentially useful markers, such as cell surface proteins, for cell types with no known markers. Because single-cell sequencing analysis is driven by clustering of cells based on their differentially expressed genes, the genes that drive the clustering can be examined as possible unique markers for the cell population of interest. Lastly, single-cell sequencing can be employed in studies of cell lineage and the regulation of differentiation. For example, a population of stem cells can be induced to differentiate, and single-cell sequencing performed at series of time points can provide “snapshots” of the progression of differentiation.
- small RNAseq
  - [RNA sequencing: advances, challenges and opportunities](https://www.nature.com/articles/nrg2934)
  - [Experimental design, preprocessing, normalization and differential expression analysis of small RNA sequencing experiments](https://silencejournal.biomedcentral.com/articles/10.1186/1758-907X-2-2)
- ribo-seq
  - [Ribosome Footprint Profiling of Translation throughout the Genome](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4917602/)
  - [Genome-Wide Analysis in Vivo of Translation with Nucleotide Resolution Using Ribosome Profiling](https://science.sciencemag.org/content/324/5924/218)
- nascent RNAseq
  - [Nascent RNA Analyses: Tracking Transcription and Its Regulation](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6858503/)

## Putting it together

EXERCISE: type of analysis to interpret results (GO)

EXERCISE: want to ask a follow up question, what type of data are appropriate?

## Wrapping up

review objectives

## Errata
