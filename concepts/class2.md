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

IMAGE: read mapping 

FIXME: how do some of the different read mapping tools differ? are there other tools we should mention?
- TopHat
- BWA
- STAR2
- Salmon (and other pseudoalignment methods)

## Assessing quality of mapped reads

RNAseQC https://software.broadinstitute.org/cancer/cga/rna-seqc

FIXME: what do each of these quality assessments tell us?
- percent alignment
- paired alignment (vs singletons)
- strandedness
- gene body coverage
- marks PCR duplicates (but this can be misleading because this varies for RNAseq experiments)

## Reference genomes, assemblies, and annotations

## Quantifying gene expression

FIXME: do we count genes or transcripts? What does this tell us biologically?

are read counts from different algorithms/software consistent? do any differences matter? 
(multimapping differences are main source of disagreement in results)

IMAGE: PCA plots for replicates

FIXME: main methods of quantifying expression (mostly in humans, but also other biomedically-relevant model systems)
- htseq-count
- [cufflinks](http://cole-trapnell-lab.github.io/cufflinks/)
- RSEM
- featureCounts

## Putting it together

EXERCISE: assess quality of mapped data give some images/summary stats

EXERCISE: choose reference genome appropriate for a tricky analysis (data combination?)

EXERCISE: choose whether gene or transcript level is more appropriate, interpreting read quantification?

## Wrapping up

review objectives

preview next class's objectives
