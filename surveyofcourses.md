# Comparison of other RNAseq course materials

## [Fredhutch.io’s Galaxy materials](https://github.com/fredhutchio/rnaseq-class)

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
* Bioconductor tools to extract meaning from previously mapped files

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
* R (Bioconductor)
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
- workflow used with undergrad interns to analyze RNAseq data for variety of labs

### Outline
- STAR two pass alignment
- RNASeQC
- post-processing in R for DGE 
  - import metadata and data
  - assess gene data
  - annotate gene names
  - create counts matrix, phenotype matrix, SummarizedExperiment object
  - DGE

### Software
- STAR, RNASeQC
- Tidyverse and DESeq2

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

An in depth course covering all aspects of RNA-seq analysis.

### Scope
* A course made up of multiple modules
* According to the schedule takes 5 days

### Outline
1. Course set up (aws, unix, tool installation)
2. Intro to RNA seq theory
3. General goals/themes in RNA seq analysis workflow
4. Intro to BAM/SAM formats
5. Visualizatio of alignment in IGV
6. BAM read counting
7. Expression estimation for known genes and transcripts
8. Differential Expression analysis
9. Downstream interpretation of expression
10. Alignment free estimation of expression with Kallisto/Sleuth
11. Isoform discovery w StringTie
12. Differential splicing analysis with Ballgown
13. Examine and visualize junction counts
14. DeNovo assembly with Trinity
15. Transcript annotation with Trinotate
16. ScRNAseq applications/advantages/challenges
17. 10x/CellRanger overview
18. Custom scRNAseq analysis in R

### Software
- EC2, unix commands for cloud computing (more info [here](https://rnabio.org/module-00-setup/0000/08/01/Unix/))
- SAMtools, bam-readcount, HISAT2, StringTie, gffcompare, htseq-count, TopHat,kallisto, FastQC, MultiQC, Picard, Flexbar, Regtools, RSeQC, bedops, gtfToGenePred, genePredToBed, how_are_we_stranded_here, R, tidyverse, Bioconductor, Sleuth (more info [here](https://rnabio.org/module-00-setup/0000/10/01/Installation/))

## Harvard

They have a series of RNAseq classes offered, 
using various approaches and infrastructure.
The synopsis here includes:
- https://github.com/hbctraining/rnaseq_overview
- https://hbctraining.github.io/Intro-to-rnaseq-hpc-salmon-flipped/ (most recent)

### Scope
- overview is conceptual, ~5 hours
- HPC is skills-based, 7.5 hours of instructor-led with substantial prep for participants, including homework to submit

### Outline

Overview:
- library prep
- sequencing steps and sequences
- experimental planning considerations
- strategies for bulk-RNAseq analysis
- data management
- raw data QC
- mapping/quantification
- sample-level assessment
- count modeling and hypothesis testing
- visualization of results
- functional analysis

HPC:
- working in HPC
- Project organization and data management
- quality control of data
- sequence alignment
- alignment-free methods
- troubleshooting RNAseq data analysis
- automating the RNAseq workflow

Other materials:
- Intro to R: https://hbctraining.github.io/Intro-to-R-flipped/#lessons
- Intro to DGE: https://hbctraining.github.io/DGE_workshop_salmon_online/#lessons

### Software

Overview: none

HPC:
- FileZilla, text editor, gitbash
- uses on-premise compute
- fastqc, slurm, salmon, MultiQC, bash, R, DGE

## [nf-core](https://nf-co.re/rnaseq)

### Scope

Nextflow pipeline

### Outline and software

This was copy and pasted from outline:

1. Download FastQ files via SRA, ENA or GEO ids and auto-create input samplesheet (ENA FTP; if required)
2. Merge re-sequenced FastQ files (cat)
3. Read QC (FastQC)
4. UMI extraction (UMI-tools)
5. Adapter and quality trimming (Trim Galore!)
6. Removal of ribosomal RNA (SortMeRNA)
7. Choice of multiple alignment and quantification routes:
  - STAR -> Salmon
  - STAR -> RSEM
  - HiSAT2 -> NO QUANTIFICATION
8. Sort and index alignments (SAMtools)
9. UMI-based deduplication (UMI-tools)
10. Duplicate read marking (picard MarkDuplicates)
11. Transcript assembly and quantification (StringTie)
12. Create bigWig coverage files (BEDTools, bedGraphToBigWig)
13. Extensive quality control:
- RSeQC
- Qualimap
- dupRadar
- Preseq
- DESeq2
14. Pseudo-alignment and quantification (Salmon; optional)
15. Present QC for raw read, alignment, gene biotype, sample similarity, and strand-specificity checks (MultiQC, R)
