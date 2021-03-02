## [Fredhutch.io’s old Galaxy materials](https://github.com/fredhutchio/rnaseq-class)

A quick start guide to doing RNA-sequencing analysis in Galaxy. Covers Importing data through gene expression analysis.

### Scope
* Walkthrough tutorial style
* Brief: <3 hrs

### Outline
1. FH Galaxy server login information
2. Importing data to Galaxy
3. Combining datasets in Galaxy
4. Using UCSC to get a gene annotation
5. Read mapping with TopHat
6. Counting reads with htseq-count
7. Differential gene expression analysis with DESeq2

### Software
* Galaxy
* TopHat
* htseq-count
* DESeq2

## [Gavin Ha’s lectures and R labs for TFCB](https://github.com/fredhutchio/tfcb_2020/tree/master/lectures/lecture16)

Lecture materials from the UW Tools For Computational Biology course. Covers Bioconductor packages for working with genomic data, inspecting and quering genomica data, identifying and annotating genomic varients.

### Scope
* R Markdown course materials
* 

### Outline
1. Genomic data analysis
  1. Using GenomicRanges to store and query genomic data
  2. Finding the overlap between two genomic sequences
2. Sequence data analysis
  1. Loading and querying BAM files using Rsamtools
  2. Computing pile up statistics
3. Read Variant Call Format (VCF) Files
  1. Read and extract contents of VCF
  2. Reading varients from VCF

### Software
* R
  * Rsamtools
  * VariantAnnotation
  * GenomicRanges

## [David Coffey’s RNAseq repository, for an authentic workflow](https://github.com/davidcoffey/RNAseq)

A series of shell and R scripts used to process RNA sequencing data

### Scope
* GitHub repo with scripts and README
* Minimal guidance

### Outline
1. Downloading raw fastq files from the NCBI sequence read archive (http://www.ncbi.nlm.nih.gov/sra) or generating your own sequencing files. 
2. Alignment to a reference genome. Unaligned reads may then be aligned to alternative genomes such a pathogen genome.
3. Merging (for multilane samples) and processing
4. Run the resulting bam files can be run through a series of additional analyses such as GATK variant detection and STAR fusion gene detection.
5. Quality control analyses may also be performed on fastq files using FastQC and bam files using RNAseQC.

### Software

## [Amy P’s repository with code and documentation for Pathways/SHIP, for materials translatable to high school students](https://github.com/FredHutch/pathways-SHIP-RNAseq)

### Scope

### Outline

### Software

## [Alex’s Lemonade Stand RNAseq materials](https://github.com/AlexsLemonade/RNA-Seq-Exercises)

A single module in a series from [The Alex's Lemonade Stand Foundation Childhood Cancer Data Lab](https://www.ccdatalab.org/)

### Scope
* According to the [schedule](https://github.com/AlexsLemonade/RNA-Seq-Exercises/blob/master/schedule.md) modules take two days
* Lots of good information in this organization's repos related to R and RNA seq but it's not well documented where things live + broken links make the repos difficult to navigate.

### Outline
1. Installing and setting up a Docker container
2. Accessing data on flash drives
3. Intro to R and intermediate R (Tidyverse)
4. QC, trim, and quantification using Salmon
5. Gene level summary using tximport
6. RNA-seq EDA
7. Differential gene expression analysis
8. Normalizing count matrix
9. Single cell - processing 10x raw data
10. Single cell - dimensionality reduction
11. Machine learning - data prep, cclustering, PLIER

### Software
* Bulk RNA Seq
  * FastQC
  * fastp
  * Salmon
  * tximport
  * DESeq2

## [Cornell RNAseq course](https://chagall.med.cornell.edu/RNASEQcourse/)

RNA Seq analysis workshop course materials.

### Scope
* According to website the workshop took 4 days
* Includes slides, sample agignment files/read counts/outputs, extensive course notes

### Outline
1. Set up on the command line - create directory structure, download fastq
2. QC raw reads w FastQC
3. Alignment with STAR
4. Interacting with BAM/SAM files using samtools
5. Visual inspection with IGV
6. Read in feature counts to R
7. Use DESeq2 to normalize read counts for differences in seq depth and transform reads to the log2 scale.
8. Differential gene analysis with DESeq2
9. GO term enrichment

### Software
* DESeq2
* ClusterProfiler

## [Griffith Lab RNAseq course](https://rnabio.org/)

### Scope

### Outline

### Software

## [Harvard](https://hbctraining.github.io/Intro-to-rnaseq-hpc-salmon-flipped/)

### Scope

### Outline

### Software

## [nf-core](https://nf-co.re/rnaseq)

### Scope

### Outline

### Software
