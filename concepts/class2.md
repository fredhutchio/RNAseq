# Bulk RNAseq analysis
# Class 2: Read mapping and quantification

## Objectives

By the end of this class,
you should be able to:
- read mapping (tools and assessing quality)
- assemblies and annotations (human and mouse)
- gene level vs transcript level
- quantifying gene expression (htseq-count, cufflinks, RSEM)

## Read mapping

STAR2

## Read mapping quality assessment

RNAseQC https://software.broadinstitute.org/cancer/cga/rna-seqc

percent alignment, paired alignment (vs singletons)
strandedness, gene body coverage

marks PCR duplicates, but this can be misleading because this varies for RNAseq experiments

## Reference genomes, assemblies, and annotations

## Quantifying genes and transcripts

are read counts from different methods consistent? do any differences matter? multimapping differences are main source of disagreement in results
PCA plots for replicates

## Putting it together

EXERCISE: assess quality of mapped data give some images/summary stats

EXERCISE: choose reference genome appropriate for a tricky analysis (data combination?)

EXERCISE: choose whether gene or transcript level is more appropriate, interpreting read quantification?

## Wrapping up

review objectives

preview next class's objectives
