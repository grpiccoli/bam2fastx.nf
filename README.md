# bam2fastx.nf

## QUICK START
```
nextflow run https://github.com/grpiccoli/bam2fastx.nf -profile <local|scrum> --i_bam ccs.bam
```

### OPTIONS:
| --i_bam     input pacbio bam file  
| --f         Optional, output format either "a" (fasta) or "q" (fastq - default)