#!/bin/bash

## Shell script to pre-process data for bulk RNAseq
# This script does not follow best practices in reproducibility.
# It is intended to summarize data pre-processing and quality assessment,
# followed by read mapping and quantification.
# It demonstrates each step in the workflow using only one sample,
# comprised of two read files (forward and reverse).
# Please see materials for class 1 and 2 for more information.

## Setup and organization
DATA=/shared/biodata/example_data
REF

## Quality assessment and filtering of raw genomic data
ml FastQC/0.11.8-Java-1.8
fastqc 
multiQC

## Read trimming and filtering
ml cutadapt/2.9-foss-2019b-Python-3.7.4
cutadapt

## Read mapping and summary
ml STAR/2.7.0d-foss-2018b
STAR
