### Exercise  2

# 1) Print current directory + list contents
pwd
ls -la

# 2) Create ~/intro_unix
mkdir -p ~/intro_unix

# 3) Create ~/intro_unix/data and subdirs ho1, ho2, ho3
mkdir -p ~/intro_unix/data/{ho1,ho2,ho3}

# 4) Create ~/intro_unix/data/ho1/folder1
mkdir -p ~/intro_unix/data/ho1/folder1

# 5) Go into folder1 and create two files: f1.txt and .f2.txt
cd ~/intro_unix/data/ho1/folder1
touch f1.txt .f2.txt

# 6) Write numbers 1..10 (one per line) into f1.txt
seq 1 10 > f1.txt

# 7) Rename .f2.txt -> f2.txt
mv .f2.txt f2.txt

# 8) First 10 lines of f1.txt + ALL of f2.txt -> f3.txt
{ head -n 10 f1.txt; cat f2.txt; } > f3.txt

### Exercise 3

# 1) Preview & count
cd ~/workshop/data
zcat GSE251845_htseq_raw_counts.csv.gz | head -n 10
zcat GSE251845_htseq_raw_counts.csv.gz | tail -n 5
zcat GSE251845_htseq_raw_counts.csv.gz | tail -n +2 | wc -l

# 2) Column indices
zcat GSE251845_htseq_raw_counts.csv.gz | head -n 1 | awk -F',' '{for(i=1;i<=NF;i++) printf("%d\t%s\n", i, $i)}'

# 3) Extract gene_id + samples (example: columns 1,3,5)
zcat GSE251845_htseq_raw_counts.csv.gz | cut -d',' -f1,3,5 > subset_cols.csv

# 4) Sort by the rightmost sample (desc), keep header
( head -n 1 subset_cols.csv && tail -n +2 subset_cols.csv | sort -t',' -k3,3nr ) > sorted_subset.csv

# 5) Quick zero/high counts on chosen samples
zcat GSE251845_htseq_raw_counts.csv.gz | awk -F',' 'NR>1 && ($2==0 || $3==0){c++} END{print c}'   # ANY-zero
zcat GSE251845_htseq_raw_counts.csv.gz | awk -F',' 'NR>1 && ($2==0 && $3==0){c++} END{print c}'   # ALL-zero
zcat GSE251845_htseq_raw_counts.csv.gz | awk -F',' 'NR>1 && $3>=1000{c++} END{print c}'         # HIGH>=1000 in col 3

# A) counts by headers
grep -c '^@' SRR1039508_subset_1.fastq
grep -c '^@' SRR1039508_subset_2.fastq
cat SRR1039508_subset_*.fastq | grep -c '^@'

# B) reads containing 'N' (sequence lines only)
awk 'NR%4==2' SRR1039508_subset_1.fastq | grep -c 'N'
awk 'NR%4==2' SRR1039508_subset_2.fastq | grep -c 'N'

# C) top 10 5' hexamers
awk 'NR%4==2{print substr($0,1,6)}' SRR1039508_subset_1.fastq \
| sort | uniq -c | sort -nr | head

awk 'NR%4==2{print substr($0,1,6)}' SRR1039508_subset_2.fastq \
| sort | uniq -c | sort -nr | head

# D) motif count (example motif)
awk 'NR%4==2' SRR1039508_subset_1.fastq | grep -c 'ACGTAC'
awk 'NR%4==2' SRR1039508_subset_2.fastq | grep -c 'ACGTAC'

# F) subset 100 reads
head -n 400 SRR1039508_subset_1.fastq > subset_100reads.fastq