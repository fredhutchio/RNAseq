# Bulk RNAseq analysis
# Class 3: Hypothesis and visualization

## Objectives

By the end of this class,
you should be able to:
- Analysis tools: EdgeR, limma voom, DESeq
- visualizing results (MA-plot, volcano plot, heat map)

## Assessing differential expression

FIXME: links to papers describing algorithms,
short summary of differences among approaches,
why prefer one over another?

[edgeR](https://academic.oup.com/bioinformatics/article/26/1/139/182458)


[limma (voom)](https://academic.oup.com/nar/article/43/7/e47/2414268)


[DESeq2](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-014-0550-8)

What is the difference between the three algorithms?

- [Biostars Link](https://www.biostars.org/p/284775/)
  - Both EdgeR/DESeq2 work on the assumption that no DE genes are being expressed
  - DESeq2 uses geometric normalization
  - EdgeR uses a weighted mean of log ratios-based method
  - Limma normalizes using quantile normalization
- [RNA-Seq differential expression analysis: An extended review and a software tool](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5739479/)
  - EdgeR: A Poisson super dispersion model is used to account for technical and biological variation. Apply the Bayesian empirical method to moderate the degree of over dispersion against transcripts.
  - Limma: Based on the linear model and originally developed to analyze data from microarray and currently extended for RNA-Seq analysis. The limma user guide recommends the use of the TMM normalization of the edgeR package associated with the use of the voom conversion, which essentially transforms the normalized counts to logarithms base 2 and estimates the mean-variance relation to determine the weight of each observation made initially by a linear model
  - DESeq2: DESeq2 firstly build a model with observed counts. Secondly, it fits using the same method from the original DESeq, or fit in two steps: find the value of the parameter that makes the likelihood largest, which is called maximum likelihood estimation. Then, it takes all the gene values and move these values towards a average value. DESeq2 uses Bayes theorem to guides the amount of movement for each gene: if the information for the gene is low, its value is moved close to the average, if the information for the gene is high, its value is moved very little. Thus, the moved values are useful to evaluate different sets of genes as well as to apply a threshold

## Visualizing differential expression

FIXME/IMAGES for each:
- what does plot show?
- how is the plot interpreted?
- primary manuscripts and example images

Most info for MA and volcano plots sourced from [this paper](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6954399/). Also contains image examples.

[MA-plot](https://en.wikipedia.org/wiki/MA_plot)
- MA plots are commonly used to represent log fold-change versus mean expression between two treatments
- Each individual data point represents a gene
- log fold change on the y axis and mean expression on the x axis

[volcano plot](https://en.wikipedia.org/wiki/Volcano_plot_(statistics))
- a comparison between two treatment conditions is the adjusted P-value versus log fold-change
- Volcano plots display the statistical significance of the difference relative to the magnitude of difference for every single gene in the comparison, usually through the negative base-10 log and base-2 log fold-change, respectively
- generally include some threshold indicators for adjusted P-values to indicate which genes would be considered statistically differentially expressed based on the adjusted P-value of their difference between treatments

[heat maps](https://en.wikipedia.org/wiki/Heat_map)
- [From online EMBL-EBI Training (Contains example image)](https://www.ebi.ac.uk/training/online/courses/functional-genomics-ii-common-technologies-and-data-analysis-methods/biological-interpretation-of-gene-expression-data-2/)
  - In heat maps the data is displayed in a grid where each row represents a gene and each column represents a sample. The colour and intensity of the boxes is used to represent changes (not absolute values) of gene expression. In the example below, red represents up-regulated genes and blue represents down-regulated genes. Black represents unchanged expression.

[venn diagrams](https://en.wikipedia.org/wiki/Venn_diagram)
- A Venn diagram consists of multiple overlapping closed curves, usually circles, each representing a set. 
- overlap represents what sets have in commmon

Example papers:
- [The microglial sensome revealed by direct RNA sequencing](https://www.nature.com/articles/nn.3554) - venn diagram, heat maps
- [Th2 responses are primed by skin dendritic cells with distinct transcriptional profiles](https://pubmed.ncbi.nlm.nih.gov/27913566/) - venn diagram, heat maps, volcano plot, PCA
- [Dissecting the phenotypic and functional heterogeneity of mouse inflammatory osteoclasts by the expression of Cx3cr1](https://elifesciences.org/articles/54493) - heat maps, volcano plots, venn diagram
- [Comprehensive comparative analysis of strand-specific RNA sequencing methods](https://www.nature.com/articles/nmeth.1491) - MA plot

## Putting it together

EXERCISE: choosing setup for hypothesis testing (distractors are other metadata)

EXERCISE: interpreting volcano plot, MA-plot

EXERCISE: interpreting heat map

## Wrapping up

make sure work is saved

review how to get back into work

review objectives

preview next class's objectives

## Errata

