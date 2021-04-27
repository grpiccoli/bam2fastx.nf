# bam2fastx.nf

## QUICK START
```
nextflow run https://github.com/grpiccoli/bam2fastx.nf [-profile <{standard}|scrum>] --i_bam ccs.bam [--f <a|{q}>]
```

### OPTIONS:
| Option    | Description
| --------- | -------------------------------------------------------------------
| -profile  | standard defaults to local executor or rapoi sets executor to slurm
| --i_bam   | input pacbio bam file  
| --f       | output format either "a" (fasta) or "q" (fastq - default)