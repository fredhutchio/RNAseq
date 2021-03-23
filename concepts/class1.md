# Bulk RNAseq analysis
# Class 1: Introduction to RNAseq data and experimental design

## Objectives

This four-class course introduces theory and concepts relevant to
bulk RNAseq analysis for biomedical research,
and is designed for research scientists (lab, clinical, computational) who have no prior experience working with genomic data.
This course requires participants have a general understanding of the central dogma of molecular biology (DNA->RNA->protein),
but assumes no prior experience handling genomic data.
This course does not teach how to perform computational analyses,
and does not have a 
This course, or equivalent background knowledge, 
is a pre- or co-requisite for the [skills course](XXX).

By the end of this course,
you should be able to:
- Identify data types and applications for bulk RNAseq analysis in biomedical research
- Design statistically robust RNAseq experiments
- Choose appropriate analytical approaches for RNAseq data
- Interpret common visualizations and hypothesis tests associated with RNAseq
- Connect data types, experimental design, and analysis methods to appropriately frame research questions and understand technical limitations of RNAseq analyses.

By the end of this lesson,
you should be able to:
- RNAseq workflow
- experimental design
- data types and technical limitations of each
- quality assessment of data

## Overview of RNAseq workflows

FIXME: diagram of overall process (same as skills)

describe range of applications for RNAseq

> Although this isn't a technical/coding course,
> we'll mention the names of software commonly applied for each step.
> This is to help orient you to what you may have already read/heard about RNAseq analysis.

## Data types

basic terminology: draws on molecular biology knowledge, but some additional ideas specific to sequencing technology

technical limitations of each approach

read length, SE vs PE

mRNA stranded, mRNA non-stranded, rRNA depleted

## Experimental design

includes considerations of how libraries are prepared

replicates

balancing statistical power: number of samples vs sequencing depth; more samples better than deeper sequencing

Section 1-3
https://bioconductor.org/packages/release/workflows/vignettes/RNAseq123/inst/doc/designmatrices.html

## Quality assessment

potential issues with read quality

ENCODE tags data that may be potentially problematic.
View their page auditing data [here](https://www.encodeproject.org/data-standards/audits/)

read filtering

read trimming

reassessing quality

## Putting it together

EXERCISE: look at examples of read data and identify differences among them. Are these types of data compatible for analysis? What would need to be done to combine them? https://www.encodeproject.org/search/?type=Experiment&assay_term_name=polyA+plus+RNA-seq&replicates.library.biosample.donor.organism.scientific_name=Homo+sapiens&status=released&biosample_ontology.organ_slims=brain

EXERCISE: you are designing an RNAseq experiment to test a hypothesis that [some experimental treatment] affects [some tissue function].
What do you need to consider and discuss when coordinating with the Genomics Core to prepare these data?

EXERCISE: interpret the QC of raw sequencing data below.
Are these data acceptable for analysis?

## Wrapping up

review objectives

preview next class's objectives

**Further reading:**
- Data Carpentry: [Project Organization and Management for Genomics](https://datacarpentry.org/organization-genomics/03-ncbi-sra/index.html)
