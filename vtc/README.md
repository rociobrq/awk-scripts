## VTC

This awk script takes transcripts in GTF format and generates a consensus for each gene. The consensus is built by taking the smallest start site of all the transcripts associated with a gene, and the largest end site of all the associated transcripts.

### Usage

```
awk -f vtc.awk transcripts.gtff

```



