#  RNAseq: Unix and R

This four-class course introduces software and analysis methods asociated with bulk RNAseq analysis for biomedical research.
These genomics-focused materials are designed for research scientists with minimal prior coding experience who are interested in learning to perform their own analyses,
as well as computationally proficient staff who are interested in learning best practices for working with research software.
The concepts course listed above (or equivalent knowledge) is a pre- or co-requisite for this course.
As this class focuses on applying reproducible computational methods (e.g., computer coding) to interrogate bioinformatics data,
additional pre-requisites include prior experience with both the Unix shell and R statistical programming.
See [Prerequisites](#prerequisites) for more information about what concepts and skills should be familiar to you before this course.

By the end of this course,
you should be able to:
- Manage data and organize projects associated with RNAseq experiments
- Recognize and interpret common file formats for genomic data, as well as software appropriate for interacting with such data
- Validate and assess quality of RNAseq data before, during, and after analysis
- Quantify RNAseq data at the gene level
- Create visualizations and test hypotheses

Please see each set of class materials for specific learning objectives.

FIXME: this class doesn't include (developing workflows, Galaxy)

Solutions for exercises can be found in [here](solutions/README.md).

## Prerequisites

### Unix shell

[Introduction to the Unix Shell](https://fredhutchio.github.io/unix_shell_intro/),
or [Unix Crash Course](https://fredhutchio.github.io/unix_shell_intro/crash_course)

### R

[Introduction to R](https://fredhutchio.github.io/r_intro/)

- working in RStudio with RStudio projects, saving work as scripts
- object assignment
- using functions

## Schedule 

When taught by an instructor,
each of the four classes is scheduled for two hours.

1. Introduction to RNAseq data
2. Read mapping and quantification
3. Hypothesis testing
4. Visualization

Each class in this course includes code-along tutorials interspersed with challenge exercises.

## Accessing data and compute environment

Software used in this course include:
- Unix shell (classes 1 and 2)
- IGV (class 2)
- Text editor (classes 1 and 2)
- R and RStudio and Bioconductor packages (classes 3 and 4)

Class participants are assumed to have access to the Fred Hutch network and ability to run jobs on the on-premise shared compute cluster.

If you do not have access to the Fred Hutch network and cluster,
and/or would prefer to perform these exercises on your own computer,
you'll need to download the data files and install additional software
(see sections below).

### Command-line software

If you would like to run analysis on your own computer
(instead of on the cluster),
you will also need to install the following software:
- [fastqc](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
- [cutadapt](https://cutadapt.readthedocs.io/en/stable/)
- [STAR](https://github.com/alexdobin/STAR)
- [subread](http://subread.sourceforge.net)

### Data files

Source of original data files

Location of processed/intermediate data files

## For curriculum contributors and instructors

Please see the [RNAseq course series](../README.md) information for teaching and contributing to these materials.
