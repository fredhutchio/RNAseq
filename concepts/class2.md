# Bulk RNAseq analysis
# Class 2: Read mapping and quantification

## Objectives

By the end of this class,
you should be able to:
- identify appropriate methods and quality assessment for mapping RNAseq reads
- select appropriate assemblies and annotations for RNAseq experiments
- differentiate between gene and transcript level analyses
- identify approaches to quantifying gene expression from mapped reads

## Methods of mapping reads

IMAGE: https://www.ebi.ac.uk/training/online/courses/functional-genomics-ii-common-technologies-and-data-analysis-methods/wp-content/uploads/sites/70/2020/05/Figure19.png

FIXME: how do some of the different read mapping tools differ? are there other tools we should mention?
- TopHat
  - [TopHat2: accurate alignment of transcriptomes in the presence of insertions, deletions and gene fusions](https://genomebiology.biomedcentral.com/articles/10.1186/gb-2013-14-4-r36)
  - [Differential gene and transcript expression analysis of RNA-seq experiments with TopHat and Cufflinks](https://www.nature.com/articles/nprot.2012.016)
  - [EMBL-EBI bioinformatics training](https://www.ebi.ac.uk/training/online/courses/functional-genomics-ii-common-technologies-and-data-analysis-methods/rna-sequencing/performing-a-rna-seq-experiment/data-analysis/read-mapping-or-alignment/)
    - TopHat aligns in two steps: 1) unspliced reads are mapped to locate exons (with Bowtie) 2) unmapped reads are then split and aligned independently to identify exon junctions

- BWA
  - [Fast and accurate short read alignment with Burrows–Wheeler transform](https://academic.oup.com/bioinformatics/article/25/14/1754/225615?login=true)
  - [BWA GitHub](https://github.com/lh3/bwa):BWA is a software package for mapping DNA sequences against a large reference genome, such as the human genome. It consists of three algorithms: BWA-backtrack, BWA-SW and BWA-MEM. The first algorithm is designed for Illumina sequence reads up to 100bp, while the rest two for longer sequences ranged from 70bp to a few megabases. BWA-MEM and BWA-SW share similar features such as the support of long reads and chimeric alignment, but BWA-MEM, which is the latest, is generally recommended as it is faster and more accurate. BWA-MEM also has better performance than BWA-backtrack for 70-100bp Illumina reads
- STAR2
  - [STAR: ultrafast universal RNA-seq aligner](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3530905/)
  - [Mapping RNA-seq Reads with STAR](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4631051/):
    - One of the foundational steps in the RNA-seq data analysis is mapping (alignment) of the large sets of sequenced reads to a reference genome. This task presents more challenges than alignment of genomic DNA reads because RNA sequences are often spliced, i.e. derived from the non-contiguous regions of the genome.
    - In addition to detecting of annotated and novel splice junctions, STAR is capable of discovering more complex RNA sequence arrangements, such as chimeric and circular RNA. STAR can align spliced sequences of any length with moderate error rates providing scalability for emerging sequencing technologies
- Salmon (and other pseudoalignment methods)
  - [Combine lab - Salmon Overview](https://combine-lab.github.io/salmon/)
    - Salmon uses new algorithms (specifically, coupling the concept of quasi-mapping with a two-phase inference procedure) to provide accurate expression estimates very quickly (i.e. wicked-fast) and while using little memory
  - [Combine lab Salmon GitHub Repo](https://github.com/COMBINE-lab/salmon)
- Other pseudoaligners
  - [Kallisto](https://pachterlab.github.io/kallisto/about)

- Comparing read mapping tools
  - [Salmon & kallisto: Rapid Transcript Quantification for RNA-Seq Data - NYU Genomics core](https://gencore.bio.nyu.edu/salmon-kallisto-rapid-transcript-quantification-for-rna-seq-data/)
  - [Benchmarking of RNA-sequencing analysis workflows using whole-transcriptome RT-qPCR expression data](https://www.nature.com/articles/s41598-017-01617-3)
    - In contrast to the microarray field, where data processing converged over the years into a well-defined set of broadly accepted workflows, the number of RNA-seq data processing workflows is still increasing, with none accepted as the standard so far. RNA-seq data processing workflows typically come in two different flavours.
    -  there are methods that align reads directly to a reference genome, followed by quantification of mapped reads (e.g. Tophat-Cufflinks5, Tophat-HTSeq6, 7 and STAR-HTSeq7, 8)
    -  there are the so-called pseudoalignment methods (e.g. Salmon9 and Kallisto10) that break up reads into k-mers before assigning them to transcripts. This results in a substantial gain in speed compared to the alignment based workflows.
    -  The workflows also differ in how they estimate expression abundance, with some enabling quantification on transcript level (i.e. Cufflinks, Salmon and Kallisto) while others are restricted to gene level quantification
    -  All workflows show a good concordance with RT-qPCR expression measurements and no workflow outperforms the others. Of note, each workflow revealed a small but specific set of genes with inconsistent expression measurements, reproducibly identified in independent datasets. These genes were typically smaller, had fewer exons and were lower expressed compared to genes with consistent expression measurements. Careful validation is warranted when evaluating RNA-seq based expression profiles for this specific set of genes.
  -[Gaining comprehensive biological insight into the transcriptome by performing a broad-spectrum RNA-seq analysis](https://www.nature.com/articles/s41467-017-00050-4)

## Assessing quality of mapped reads

RNAseQC https://software.broadinstitute.org/cancer/cga/rna-seqc
- https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3356847/

FIXME: what do each of these quality assessments tell us?
- percent alignment
  - [From EMBL-EBI online training](https://www.ebi.ac.uk/training/online/courses/functional-genomics-ii-common-technologies-and-data-analysis-methods/rna-sequencing/performing-a-rna-seq-experiment/data-analysis/read-mapping-or-alignment/): The percentage of mapped reads is a global indicator of the overall sequencing accuracy and of the presence of contaminating DNA.
- paired alignment (vs singletons)
- strandedness: to assess the performance of strand-specific library construction methods, the percentage of sense-derived reads is given for each end of the read pair. Whereas a non-strand-specific protocol would give values of 50%/50%, strand-specific protocols typically yield 99%/1% or 1%/99% for this metric.
- gene body coverage: Calculate the RNA-seq reads coverage over gene body
- marks PCR duplicates (but this can be misleading because this varies for RNAseq experiments)

## Reference genomes, assemblies, and annotations

## Quantifying gene expression

FIXME: do we count genes or transcripts? What does this tell us biologically?

are read counts from different algorithms/software consistent? do any differences matter? 
(multimapping differences are main source of disagreement in results)

IMAGE: PCA plots for replicates
  - [The Harvard training](https://hbctraining.github.io/DGE_workshop/lessons/03_DGE_QC_analysis.html) has a series of PCA plots with various different factors colored to show how things cluster

FIXME: main methods of quantifying expression (mostly in humans, but also other biomedically-relevant model systems)
- [htseq-count](https://htseq.readthedocs.io/en/master/)
- [cufflinks](http://cole-trapnell-lab.github.io/cufflinks/)
- RSEM
- [featureCounts](https://academic.oup.com/bioinformatics/article/30/7/923/232889)

## Putting it together

EXERCISE: assess quality of mapped data give some images/summary stats

EXERCISE: choose reference genome appropriate for a tricky analysis (data combination?)

EXERCISE: choose whether gene or transcript level is more appropriate, interpreting read quantification?

## Wrapping up

review objectives

preview next class's objectives
