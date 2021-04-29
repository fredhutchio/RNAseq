# Bulk RNAseq analysis
# Class 4: Contextualizing results, and mods to RNAseq

## Objectives

By the end of this class,
you should be able to:
- functional analysis
- other considerations for analyzing RNAseq data
- other types of RNAseq data

## Functional analyses

So far we've discussed annotations in terms of gene names

We can use additional information about genes to help us understand the broader context of how genes are being differentially expressed

Connecting pathways/networks of genes, or categorizing the roles genes play: functional analysis

FIXME/IMAGE(?): for each of the following tools, provide a link and information identifying its approach to functional annotations

- [GSEA](https://www.gsea-msigdb.org/gsea/index.jsp)
  - [Gene set enrichment analysis: A knowledge-based approach for interpreting genome-wide expression profiles](https://www.pnas.org/content/102/43/15545):
    - The method derives its power by focusing on gene sets, that is, groups of genes that share common biological function, chromosomal location, or regulation
    - Given an a priori defined set of genes S (e.g., genes encoding products in a metabolic pathway, located in the same cytogenetic band, or sharing the same GO category), the goal of GSEA is to determine whether the members of S are randomly distributed throughout L or primarily found at the top or bottom. We expect that sets related to the phenotypic distinction will tend to show the latter distribution.
- [GOseq](https://genomebiology.biomedcentral.com/articles/10.1186/gb-2010-11-2-r14)
  -  analysis is widely used to reduce complexity and highlight biological processes in genome-wide expression studies, but standard methods give biased results on RNA-seq data due to over-detection of differential expression for long and highly expressed transcripts. Application of GOseq to a prostate cancer data set shows that GOseq dramatically changes the results, highlighting categories more consistent with the known biology.
  -  In order to correct for selection bias in category testing, we propose the following three-step methodology. First, the genes that are significantly DE between conditions are identified. The GOseq method works with any procedure for identifying DE genes. Second, the likelihood of DE as a function of transcript length is quantified. This is obtained by fitting a monotonic function to DE versus transcript length data. Finally, the DE versus length function is incorporated into the statistical test of each category's significance. This final step takes into account the lengths of the genes that make up each category.
- [GOrilla](http://cbl-gorilla.cs.technion.ac.il/)
  - [GOrilla: a tool for discovery and visualization of enriched GO terms in ranked gene lists](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-10-48)
    - GOrilla is a web-based application that identifies enriched GO terms in ranked lists of genes, without requiring the user to provide explicit target and background sets. This is particularly useful in many typical cases where genomic data may be naturally represented as a ranked list of genes (e.g. by level of expression or of differential expression).
    - The application has two modes of operation: (1) Discovery of enriched GO terms at the top of a ranked list of genes using the mHG statistics (as explained in this paper); (2) Discovery of enriched GO terms in a target set versus a background set and using a hypergeometric model (as commonly done in other applications). In this case the ranking inside these lists is ignored.
- [topGO](https://bioconductor.statistik.tu-dortmund.de/packages/3.3/bioc/vignettes/topGO/inst/doc/topGO.pdf)
  - The topGO package is designed to facilitate semi-automated enrichment analysis for Gene Ontology (GO) terms. The process consists of input of normalised gene expression measurements, gene-wise correlation or differential expression analysis, enrichment analysis of GO terms, interpretation and visualisation of the results.
  - One of the main advantages of topGO is the unified gene set testing framework it offers. Besides providing an easy to use set of functions for performing GO enrichment analysis, it also enables the user to easily implement new statistical tests or new algorithms that deal with the GO graph structure. This unified framework also facilitates the comparison between different GO enrichment methodologies.
- [amiGO](http://amigo.geneontology.org/amigo)
  - [AmiGO: online access to ontology and annotation data](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2639003/)
    - To give broad access to this resource, the GO Consortium has developed AmiGO, a web-based application that allows users to search, sort, analyze, visualize and download data of interest. Along with providing details of the ontologies, gene products and annotations, AmiGO features a BLAST (Altschul et al., 1990) search, Term Enrichment and GO Slimmer tools, the GO Online SQL Environment and a user help guide
- [clusterProfiler](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3339379/)
  - Here, we present an R package, clusterProfiler that automates the process of biological-term classification and the enrichment analysis of gene clusters
  - The clusterProfiler package depends on the Bioconductor annotation data GO.db and KEGG.db to obtain the maps of the entire GO and KEGG corpus
  - The clusterProfiler package offers a gene classification method, namely groupGO, to classify genes based on their projection at a specific level of the GO corpus, and provides functions, enrichGO and enrichKEGG, to calculate enrichment test for GO terms and KEGG pathways based on hypergeometric distribution. To prevent high false discovery rate (FDR) in multiple testing, q-values (Storey, 2002) are also estimated for FDR control. Furthermore, clusterProfiler supplies a function, compareCluster, to automatically calculate enriched functional categories of each gene clusters and provides several methods for visualization.

## Other considerations for RNAseq data

FIXME/IMAGE(?): definition, example paper, etc for each of following (could duplicate content in SciWiki resource library)

- isoforms and alternative splicing
  - [Understanding alternative splicing: towards a cellular code](nature.com/articles/nrm1645):
    - Alternative splicing allows individual genes to generate multiple mRNAs. Many of these mRNAs encode functionally distinct protein isoforms, thereby bridging the gap between genome and proteome
    - FIG 1 is a schematic of an 'elementary alternative splicing event'
  - [Alternative Splicing: New Insights from Global Analyses](https://www.cell.com/cell/fulltext/S0092-8674(06)00817-8?_returnURL=https%3A%2F%2Flinkinghub.elsevier.com%2Fretrieve%2Fpii%2FS0092867406008178%3Fshowall%3Dtrue):
    -  of the most remarkable observations stemming from the sequencing of genomes of diverse species is that the number of protein-coding genes in an organism does not correlate with its overall cellular complexity
    -  These observations indicate that mechanisms acting to regulate and diversify gene functions must have played a major role in the evolution of specialized cell types and activities that are typically associated with complex metazoans
    -  Alternative splicing (AS), the process by which the exons of primary transcripts (pre-mRNAs) from genes can be spliced in different arrangements to produce structurally and functionally distinct mRNA and protein variants, may be one of the most extensively used mechanisms that accounts for the greater macromolecular and cellular complexity of higher eukaryotic organisms
    -  Also includes useful schematics in figures
- lincRNAs
  - [The functions and unique features of long intergenic non-coding RNA](https://www.nature.com/articles/nrm.2017.104):
    - Long intergenic non-coding RNAs (lincRNAs) are defined as autonomously transcribed non-coding RNAs longer than 200 nucleotides that do not overlap annotated coding genes
    - The existence of lincRNAs was first suggested by studies using tiling arrays across genomic sequences, which observed pervasive transcription1,2 from regions with no known coding genes
    - The small number of lincRNAs that have been functionally characterized have diverse roles, including enforcing stable and repressive chromatin states that increase or suppress transcriptional activation, orchestrating higher-order nuclear architecture, and acting as protein and RNA scaffolds and decoys
    - The transcription of lincRNAs can regulate gene neighbourhoods independently of the lincRNA transcripts themselves, suggesting the involvement of enhancer-like activity.
- SNVs
  - [Systematic comparative analysis of single-nucleotide variant detection methods from single-cell RNA sequencing data](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1863-4)
    - Next generation sequencing is by far the most useful technology to detect mutations for its ability to screen SNVs in a high-throughput manner. SNVs could be detected from the whole genome sequencing (WGS) or whole exome sequencing (WES), and then be utilized to infer clonal architecture or to construct the evolutionary relationships of tumors
- RNA editing
  - [The many roles of an RNA editor](https://www.nature.com/articles/35098584):
    - RNA editing describes the changes that take place in the RNA sequence after transcription is completed. Examples include modification of cytosine to uracil or of adenine to isoleucine by deamination, or insertion and/or deletion of particular bases.
    - RNA editing is of two types: it either involves the insertion/deletion of nucleotides or their modification. The latter is the most widespread type of RNA editing, and is found both in plant organelles and in the nucleus of higher eukaryotes.
    - This review concentrates on the best-characterized types of RNA editing that are found in mammals, the conversion of cytosine (C) to uracil (U) and the conversion of adenosine (A) to inosine (I).
    - Includes schematics
- dealing with multiple species (xenografts, viruses)

## RNAseq beyond differential gene expression

FIXME/IMAGE(?): definition, example paper, etc for each of following (could duplicate content in SciWiki resource library)

- scRNAseq
  - [An Introduction to the Analysis of Single-Cell RNA-Sequencing Data](https://www.cell.com/molecular-therapy-family/methods/pdf/S2329-0501(18)30066-4.pdf)
    - High-throughput sequencing along with high-yield cell separation methods have paved the way to modern single-cell sequencing platforms such as Fluidigm C1, DropSeq, Chromium 10X, SCI-Seq, and many others
    - All rely on labeling mRNA molecules with DNA barcodes during reverse transcription and/or subsequent steps, which allows indexing of the transcripts back to their individual cells of origin. Although each method is unique in the way it separates cells and labels the mRNA molecules, they all rely on similar computational pipelines for the representation of the transcriptional profiles
    - these technologies can effectively isolate the signal from rare cell populations, which would be hidden in output from bulk cell population RNA sequencing.5–8 Moreover, the technology can be used to infer potentially useful markers, such as cell surface proteins, for cell types with no known markers. Because single-cell sequencing analysis is driven by clustering of cells based on their differentially expressed genes, the genes that drive the clustering can be examined as possible unique markers for the cell population of interest. Lastly, single-cell sequencing can be employed in studies of cell lineage and the regulation of differentiation. For example, a population of stem cells can be induced to differentiate, and single-cell sequencing performed at series of time points can provide “snapshots” of the progression of differentiation.
- small RNAseq
  - [RNA sequencing: advances, challenges and opportunities](https://www.nature.com/articles/nrg2934)
  - [Experimental design, preprocessing, normalization and differential expression analysis of small RNA sequencing experiments](https://silencejournal.biomedcentral.com/articles/10.1186/1758-907X-2-2)
    - Prior to the advent of new, deep sequencing methods, small RNA (sRNA) discovery was dependent on Sanger sequencing, which was time-consuming and limited knowledge to only the most abundant sRNA. The innovation of large-scale, next-generation sequencing has exponentially increased knowledge of the biology, diversity and abundance of sRNA populations.
    - There are several biologically relevant and functionally diverse classes of sRNA of specific sizes and produced by different, genetically separable pathways. These include miRNA, small interfering RNA (siRNA) and the animal-specific Piwi-interacting RNA (piRNA, originally called repeat-associated siRNA or rasiRNA)
    - All of these kinds of sRNA can be identified by generating sRNA sequencing libraries from size-selected populations of RNA that are approximately 18 to 30 nt long. Along with these biologically relevant sRNA, RNA degradation products, including fragments of transfer RNA (tRNA) and ribosomal RNA (rRNA), are also sequenced
- ribo-seq
  - [Ribosome Footprint Profiling of Translation throughout the Genome](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4917602/)
    - Ribosome profiling has emerged as a technique for measuring translation comprehensively and quantitatively by deep sequencing of ribosome-protected mRNA fragments
    - By identifying the precise positions of ribosomes, footprinting experiments have unveiled key insights into the composition and regulation of the expressed proteome, including delineating potentially functional micropeptides, revealing pervasive translation on cytosolic RNAs, and identifying differences in elongation rates driven by codon usage or other factors
    - Includes images/figures
  - [Genome-Wide Analysis in Vivo of Translation with Nucleotide Resolution Using Ribosome Profiling](https://science.sciencemag.org/content/324/5924/218)
- nascent RNAseq
  - [Nascent RNA Analyses: Tracking Transcription and Its Regulation](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6858503/)
    - Transcription and its control can be tracked indirectly by measuring stable RNAs, or directly by measuring nascent RNAs. The latter reveals the immediate regulatory changes in response to developmental, environmental, disease, and metabolic signals
    - Includes figures

## Putting it together

EXERCISE: type of analysis to interpret results (GO)

EXERCISE: want to ask a follow up question, what type of data are appropriate?

## Wrapping up

review objectives

## Errata
