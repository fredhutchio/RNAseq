# RNAseq courses

## Description

This RNAseq course collection includes both lecture-type classes focused on concepts
as well as lab-type skills (coding) classes.
These materials are developed by fredhutch.io, 
the data and computational analysis training program at Fred Hutch. 

Sessions of these courses are periodically taught by instructors at Fred Hutch. The materials are also freely available for self-guided, work-at-your-own-pace study.

Information about RNAseq is available on the [Fred Hutch Biomedical Data Science Wiki](FIXME).

## RNAseq: Concepts

This four-class course introduces bulk RNAseq analysis for biomedical research.
This course assumes a general understanding of the central dogma of molecular biology (DNA->RNA->protein),
and is aimed primarily at research scientists (lab, clinical, computational).
This course, or equivalent background knowledge, 
is a pre- or co-requisite for the skills course described below.

By the end of this course,
you should be able to:
- Identify data types and applications for bulk RNAseq analysis in biomedical research
- Design statistically robust RNAseq experiments
- Choose appropriate analytical approaches for RNAseq data
- Interpret common visualizations and hypothesis tests associated with RNAseq

Please see each set of class materials for specific learning objectives. 

[[links to other materials that have been adapted in this lesson]]

### Concepts schedule

When taught by an instructor,
each of the four classes is scheduled for one hour.
The HackMD (interactive page used for sharing links and information) for instructor-led courses is [here](FIXME).

1. Introduction

By the end of this class, you should be able to:
- RNAseq workflow
- experimental design (replicates, read length, SE vs PE)
- data types (mRNA stranded, mRNA non-stranded, rRNA depleted)
- quality assessment of data

2. Read mapping and quantification

By the end of this class, you should be able to:
- read mapping (tools and assessing quality)
- assemblies and annotations (human and mouse)
- quantifying gene expression (htseq-count, cufflinks, RSEM)

3. Hypothesis and visualization

By the end of this class, you should be able to:
- Analysis tools: EdgeR, limma voom, DESeq
- visualizing results (MA-plot, volcano plot, heat map)

4. Contextualizing results, and mods to RNAseq

By the end of this class, you should be able to:
- GSEA, GOseq, GOrillia, etc
- isoforms & alternative splicing, lincRNAs, SNVs & RNA editing, multiple species (xenografts, viral, etc) 
- other types of RNA-seq: single-cell (sc) RNA-seq, small RNA-seq, Ribo-seq, nascent RNA-seq

## RNAseq: Skills

This four-class course introduces bulk RNAseq analysis for biomedical research.
This course assumes a general understanding of the central dogma of molecular biology (DNA->RNA->protein),
and is aimed primarily at research scientists (lab, clinical, computational).
The concepts course listed above (or equivalent knowledge) is a pre- or co-requisite for this course.
Additional pre-requisites include (Intro R, FIXME: Intro Unix? HPC: On-prem?)

By the end of this course,
you should be able to:
- Manage data and organize projects associated with RNAseq experiments
- Validate and assess quality of RNAseq data before, during, and after analysis
- Quantify RNAseq data (specify read mapping?)
- Create visualizations and test hypotheses

Please see each set of class materials for specific learning objectives. 

[[links to other materials that have been adapted in this lesson]]

Solutions for exercises can be found in [here](solutions/README.md).

### Skills schedule 

When taught by an instructor,
each of the four classes is scheduled for two hours.
The HackMD (interactive page used for sharing links and information) for instructor-led courses is [here](FIXME).

1. Introduction
By the end of this class, you should be able to:
- Organize files (data, code, results) associated with genomics projects
- reproducibility
- QC of data
- data trimming and filtering

2. Read mapping and quantification
By the end of this class, you should be able to:
- mapping tools
- IGV

3. Hypothesis testing
By the end of this class, you should be able to:

4. Visualization
By the end of this class, you should be able to:


Each class in this course includes code-along tutorials interspersed with challenge exercises.

*Required software:**

Software used in this course include:
- IGV

The links above reference relevant sections of [fredhutch.io's Software page](http://www.fredhutch.io/software/).

## For curriculum contributors and instructors

Please see the following resources for more information on:
- [**Teaching**](https://github.com/fredhutchio/instructors) these materials.
[`instructors.md`](instructors.md) includes information for instructors to facilitate teaching each lesson.
[`hackmdio.md`](hackio.md) is an archive of the [interactive webpage](https://hackmd.io) used during lessons.
- [**Contributing**](https://github.com/fredhutchio/curriculum_contribution) to lessons.
Each lesson's materials are described in markdown (`.md`) files
in the [GitHub repository](FIXME).
