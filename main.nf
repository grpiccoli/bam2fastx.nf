#!/usr/bin/env nextflow

// BAM2FASTX

Channel.fromPath("$params.i_bam", type: 'file')
.buffer(size:1)
.set{
    refbam;
}

process pbbam {
	tag "pbbam.$x"
    container "$params.pbbam_con"
    publishDir "$params.o_i"

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
	tag "bam2fastx.$bam"
    container "$params.bam2fastx_con"
    publishDir "$params.o_ref"
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
    bam2fast$params.f -o \$name \${name}.bam
	"""
}