#!/bin/bash

bwa="/s3/opt/bin/bwa"
ref_name="/s1/home/extRDA/tjbae/snakemake/data/reference/Homo_sapiens_assembly38.fasta"

${bwa} mem -t 8 ${ref_name} r1_trimmed.fastq r2_trimmed.fastq > SRR34149117.sam
