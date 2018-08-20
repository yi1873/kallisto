# index
docker run --rm -v /path:/path pici/kallisto \
       /root/kallisto_linux-v0.44.0/kallisto index \
       -i /path/virus.kallisto.idx --make-unique \
       /path/viral_dusted.genome.fna

# run
docker run --rm -v /path:/path pici/kallisto \
       /root/kallisto_linux-v0.44.0/kallisto quant \
       -i /path/virus.kallisto.idx -t 8 -o /path/outdir \
       /path/test.R1_masked.fastq.gz /path/test.R2_masked.fastq.gz
