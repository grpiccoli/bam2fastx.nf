[![DOI](zenodo.4722467.svg)](https://zenodo.org/badge/latestdoi/361971295)

# bam2fastx.nf

## QUICK START - BASIC USAGE:
```
nextflow run https://github.com/grpiccoli/bam2fastx.nf --i_bam ccs.bam
```

### OPTIONS:
| Options       | Default Value           | Description  
| ------------- | ----------------------- | ---------------------------------------
| --i_bam       | REQUIRED/NULL           | path to input pacbio bam file  
| --o_f         | q                       | output format q=fastq a=fasta  
| --o_i         | output/indexes          | output directory for index file  
| --o_fx        | output/fastxs           | output directory for fastx files  

| Advanced Opts | Default Value           | Description  
| ------------- | ----------------------- | ---------------------------------------
| --m           | 1.GB                    | RAM memory allocation  
| --p           | 2                       | CPU core allocation  
| --c_pbbam     | pbbam:1.6.0--h5b7e6e0_0 | pbbam container url:tag  
| --c_bam2fastx | pbbam:1.6.0--h5b7e6e0_0 | bam2fastx container url:tag  

| HPC Opts      | Default Value           | Description  
| ------------- | ----------------------- | ---------------------------------------
| --e           | local                   | nextflow executor (slurm, local, etc)  
| --q           | quicktest               | queue/partition name  
| --t           | 1h                      | max execution time  

## REQUIREMENTS:
1) nextflow. Instalation without sudo:
```
curl -s https://get.nextflow.io | bash
```
2) singularity, might require sudo:
[sylabs.io/guides/3.5/user-guide/quick_start.html](https://sylabs.io/guides/3.5/user-guide/quick_start.html)

### CITE
Guillermo R. Piccoli. (2021, April 27). grpiccoli/bam2fastx.nf: (Version 1.3.0). Zenodo. http://doi.org/10.5281/zenodo.4722467  

[![Analytics](https://ga-beacon.appspot.com/G-0GE7FEF6BD/pbbioconda/blob/master/README.md)](https://github.com/PacificBiosciences/pbbioconda)  