#!/usr/bin/env nextflow

// BAM2FASTX

Channel.fromPath("$params.i_bam", type: 'file')
.buffer(size:1)
.set{
    refbam;
}

process pbbam {
	executor params.e
    time params.t
    queue params.q
    memory params.m
    cpus params.p
    publishDir params.o_i
    container params.c_pbbam

	tag "pbbam.$x"

	input:
	file x from refbam

	output:
	tuple file("*.bam.pass"), file("*.pbi") into ref_pbi

	script:
	"""
    pbindex $x
    ln -s $x ${x}.pass
	"""
}

process bam2fastx {
	executor params.e
    time params.t
    queue params.q
    memory params.m
    cpus params.p
    publishDir params.o_fx
    container params.c_bam2fastx

	tag "bam2fastx.$bam"
    cache 'lenient'

	input:
    tuple file(bam), file(index) from ref_pbi

	output:
	file "*.fastq.gz" into ref_hifiasm, ref_flye, ref_nextdenovo, ref_canu

	script:
	"""
    name=$bam
    name=\${name%.*}
    mv $bam \$name
    name=\${name%.*}
    bam2fast$params.o_f -o \$name \${name}.bam
	"""
}