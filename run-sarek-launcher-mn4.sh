#!/bin/bash

#module load nextflow/21.04.1
#module load singularity/3.5.2

nextflow run main.nf \
	-profile singularity \
	--max_cpus "16" \
	--max_memory "32.GB" \
	--single_cpu_mem "2.GB" \
	-with-dag results/flowchart.html \
	-resume
