# bam2fastx.nf

## QUICK START
```
nextflow run https://github.com/grpiccoli/bam2fastx.nf [-profile <{standard}|scrum>] --i_bam ccs.bam [--f <a|{q}>]
```

### OPTIONS:
| Options   | Default Value | Description
| --------- | ------------- | --------------------------------------------------------
| -profile  | standard      | sets local executor to local (standard) or slurm (rapoi)  
| --i_bam   | REQUIRED      | path to input pacbio bam file  
| --f       | q             | sets output format to fasta (a) or fastq (q)  