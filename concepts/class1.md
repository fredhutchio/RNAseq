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
- outline the main steps in an RNAseq workflow
- apply best practices in design of RNAseq experiments
- differentiate types of data obtained via RNAseq, including their technical limitations
- assess the quality of RNAseq data

## Overview of RNAseq workflows

IMAGE: diagram of overall process (same as skills course)

![A very simple overview from the hbc course](https://github.com/hbctraining/Training-modules/blob/master/planning_successful_rnaseq/img/de_workflow2019.png)

![Workflow overview from EMBL-EBI Training materials](https://www.ebi.ac.uk/training/online/courses/functional-genomics-ii-common-technologies-and-data-analysis-methods/rna-sequencing/performing-a-rna-seq-experiment/)

FIXME: applications for RNAseq (DGE)

- [From EMBL-EBI Functional Genomics training](https://www.ebi.ac.uk/training/online/courses/functional-genomics-ii-common-technologies-and-data-analysis-methods/rna-sequencing/):
  - gene expression profiling between samples
  - study of alternative splicing events (differential inclusion/exclusion of exons in the processed RNA product after splicing of a precursor RNA segment) associated with diseases
  - identification of allele-specific expression, disease-associated single nucleotide polymorphisms (SNPs) and gene fusions to understand, e.g. disease causal variants in cancer

- [From cd-genomics](https://www.cd-genomics.com/resourse-Applications-of-RNA-Seq.html): Since RNA-seq is quantitative, it is useful to determine RNA expression levels. In addition to this basic function, RNA-seq can be used for differential gene expression, variants detection and allele-specific expression, small RNA profiling, characterization of alternative splicing patterns, system biology, and single-cell RNA-seq.

> Although this isn't a technical/coding course,
> we'll mention the names of software commonly applied for each step.
> This is to help orient you to what you may have already read/heard about RNAseq analysis.

## Data types

FIXME and IMAGE(S): terminology related to data types:
- read length
  - [From Illumina](https://www.illumina.com/science/technology/next-generation-sequencing/plan-experiments/read-length.html): read length refers to the number of base pairs (bp) sequenced from a DNA fragment. After sequencing, the regions of overlap between reads are used to assemble and align the reads to a reference genome, reconstructing the full DNA sequence. Sequencing read lengths correspond directly to the sequencing reagents used on an NGS instrument—more chemistry cycles generate longer reads.
  - [From Columbia Genome Center](https://systemsbiology.columbia.edu/genome-sequencing-defining-your-experiment): During sequencing, it is possible to specify the number of base pairs that are read at a time. For example, one read might consist of 50 base pairs, 100 base pairs, or more. Longer reads can provide more reliable information about the relative locations of specific base pairs. (This helps to address a common challenge that arises in sequencing because the same read sequences can appear in multiple places within a genome.) However, it is usually more expensive to generate longer reads.
- SE vs PE
  - [From Columbia Genome Center](https://systemsbiology.columbia.edu/genome-sequencing-defining-your-experiment):
    - Paired End - paired-end reading it starts at one read, finishes this direction at the specified read length, and then starts another round of reading from the opposite end of the fragment. Paired-end reading improves the ability to identify the relative positions of various reads in the genome, making it much more effective than single-end reading in resolving structural rearrangements such as gene insertions, deletions, or inversions. It can also improve the assembly of repetitive regions. This degree of accuracy may not be required for all experiments, however, and paired-end reads are more expensive and time-consuming to perform than single-end reads.
    - Single End - In single-end reading, the sequencer reads a fragment from only one end to the other, generating the sequence of base pairs
- mRNA stranded (aka strand specific)
  - [From Zhao, S., Zhang, Y., Gordon, W. et al.](https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-015-1876-7): It is now possible to retain the information pertaining to strand origin by modifying the standard RNA-seq protocol; this is known as strand specific RNA-seq, or stranded RNA-seq
- mRNA non-stranded
  - [From Zhao, S., Zhang, Y., Gordon, W. et al.](https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-015-1876-7): one significant shortcoming of the standard RNA-seq protocol is that it loses the strand of origin information for each transcript. Synthesis of randomly primed double-stranded cDNA followed by the addition of adaptors for next-generation sequencing leads to the loss of information on which strand the original mRNA template is coming from, and without that information it becomes difficult to accurately determine gene expression from overlapping genes
- rRNA depleted
  - [From Zhao, S., Zhang, Y., Gamini, R. et al. 2015 Nature paper](https://www.nature.com/articles/s41598-018-23226-4):
    - Ribosomal RNA (rRNA) is the most highly abundant component of total RNA isolated from animal or human cells and tissues, comprising the majority (>80% to 90%) of the molecules in a total RNA sample7. To allow efficient transcript/gene detection, highly abundant rRNAs must be removed from total RNA before sequencing
    - depletion of highly abundant rRNAs through hybridization capture followed by magnetic bead separation. 
    - Good discussion of pros/cons of rRNA depletion vs PolyA+ selection
  - [From ThermoFisher](https://www.thermofisher.com/us/en/home/life-science/dna-rna-purification-analysis/rna-extraction/rna-applications/ribosomal-rna-depletion.html):
    - Ribosomal depletion is a critical method in transcriptomics that allows for efficient detection of functionally relevant coding as well as non-coding transcripts through removal of highly abundant rRNA species
    - In our rRNA removal kits, rRNA is captured by complimentary oligonucleotides that are coupled to paramagnetic beads, after which the bound rRNA is precipitated and removed from the reaction. Using magnetic beads is considered the most efficient way to get high quality RNA.

technical limitations of each approach

## Experimental design

- [From Harvard Training](https://github.com/hbctraining/Training-modules/blob/master/planning_successful_rnaseq/lessons/experimental_planning_considerations.md):

  - Important considerations for RNA sequencing experiments that greatly affect the quality of DEG analysis:

    1. Number and type of replicates
    2. Avoiding confounding
    3. Addressing batch effects

includes considerations of how libraries are prepared

replicates

- [From Harvard Training](https://github.com/hbctraining/Training-modules/blob/master/planning_successful_rnaseq/lessons/experimental_planning_considerations.md):
  - technical replicate: use the same biological sample to repeat the technical or experimental steps in order to accurately measure technical variation and remove it during analysis.
  - biological replicate: use different biological samples of the same condition to measure the biological variation between samples.
  - with the current RNA-Seq technologies, technical variation is much lower than biological variation and technical replicates are unneccessary.
  - In contrast, biological replicates are absolutely essential. For differential expression analysis, the more biological replicates, the better the estimates of biological variation and the more precise our estimates of the mean expression levels. This leads to more accurate modeling of our data and identification of more differentially expressed genes.
  - biological replicates are of greater importance than sequencing depth

balancing statistical power: number of samples vs sequencing depth; more samples better than deeper sequencing

- [From Harvard Training](https://github.com/hbctraining/Training-modules/blob/master/planning_successful_rnaseq/lessons/experimental_planning_considerations.md):
  - IMG: there is a figure on this page where x axis is number of reads and y is number of DE genes found where number of replicates is denoted by line width.
    - figure shows the relationship between sequencing depth and number of replicates on the number of differentially expressed genes identified [1]. Note that an increase in the number of replicates tends to return more DE genes than increasing the sequencing depth. Therefore, generally more replicates are better than higher sequencing depth, with the caveat that higher depth is required for detection of lowly expressed DE genes and for performing isoform-level differential expression.

  - guide lines to help with experiment planning
    - General gene-level differential expression:
      - ENCODE guidelines suggest 30 million SE reads per sample (stranded).
      - 15 million reads per sample is often sufficient, if there are a good number of replicates (>3).
      - Spend money on more biological replicates, if possible.
    - Gene-level differential expression with detection of lowly-expressed genes:
      - Similarly benefits from replicates more than sequencing depth.
      - Sequence deeper with at least 30-60 million reads depending on level of expression (start with 30 million with a good number of replicates).
    - Isoform-level differential expression:
      - Of known isoforms, suggested to have a depth of at least 30 million reads per sample and paired-end reads.
      - OF novel isoforms should have more depth (> 60 million reads per sample).
      - Choose biological replicates over paired/deeper sequencing.
      - Perform careful QC of RNA quality. Be careful to use high quality preparation methods and restrict analysis to high quality RIN # samples.
    - Other types of RNA analyses (intron retention, small RNA-Seq, etc.):
      - Different recommendations depending on the analysis.
      - Almost always more biological replicates are better!

Section 1-3
https://bioconductor.org/packages/release/workflows/vignettes/RNAseq123/inst/doc/designmatrices.html

## Quality assessment

potential issues with read quality

- [From Computational Genomics with R](https://compgenomr.github.io/book/quality-check-on-sequencing-reads.html): The sequencing technologies usually produce basecalls with varying quality. In addition, there could be sample-specific issues in your sequencing run, such as adapter contamination. It is standard procedure to check the quality of the reads and identify problems before doing further analysis. Checking the quality and making some decisions for the downstream analysis can influence the outcome of your project.
  - sequence quality per base/cycle - quality scores across all bases at each position in the read
  - sequence content per base/cycle - shows nucleotide proportions for each position
  - read frequency - shows the degree of duplication for every read in the library. High levels of duplication is likely to indicate enrichment bias.
    - 

ENCODE tags data that may be potentially problematic.
View their page auditing data [here](https://www.encodeproject.org/data-standards/audits/)

read filtering

- [From Computational Genomics with R](https://compgenomr.github.io/book/filtering-and-trimming-reads.html): The quality check might have shown the number of reads that have low quality scores. These reads will probably not align very well because of the potential mistakes in base calling, or they may align to wrong places in the genome. Therefore, you may want to remove these reads from your fastq file.

read trimming

- [From Computational Genomics with R](https://compgenomr.github.io/book/filtering-and-trimming-reads.html): Another potential scenario is that parts of your reads need to be trimmed in order to align the reads. In some cases, adapters will be present in either side of the read; in other cases technical errors will lead to decreasing base quality towards the ends of the reads. Both in these cases, the portion of the read should be trimmed so the read can align or better align the genome. 

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
