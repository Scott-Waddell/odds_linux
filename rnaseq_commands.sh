Testing lab-book  29April 2025


fastq -o to another folder
.. means up one directory and then 

dpag0390@obds:/project/dpag0390$ load_mamba

(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux$ tree
.
├── 1_fastq
│   ├── cd4_rep1_read1.fastq.gz -> /project/shared/linux/5_rnaseq/fastq/cd4_rep1_read1.fastq.gz
│   ├── cd4_rep2_read2.fastq.gz -> /project/shared/linux/5_rnaseq/fastq/cd4_rep2_read2.fastq.gz
│   └── md5sum.txt
├── 2_genome
│   ├── downloads.txt
│   ├── Mus_musculus.GRCm39.113.gtf.gz
│   └── Mus_musculus.GRCm39.dna.primary_assembly.fa.gz
└── 3_analysis
    ├── 1_fastqc
    └── rnaseq_commands.sh

4 directories, 7 files
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux$ cd /project/dpag0390/1_linux/              
(obds-rnaseq) dpag0390@obds:/project/dpag0390/1_linux$ cd ..
(obds-rnaseq) dpag0390@obds:/project/dpag0390$ cd /linux
cd: no such file or directory: /linux
(obds-rnaseq) dpag0390@obds:/project/dpag0390$ /project/dpag0390/linux
zsh: permission denied: /project/dpag0390/linux
(obds-rnaseq) dpag0390@obds:/project/dpag0390$ pwd      
/project/dpag0390
(obds-rnaseq) dpag0390@obds:/project/dpag0390$ cd linux
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux$ cd 1_fastq 
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/1_fastq$ ls
cd4_rep1_read1.fastq.gz  cd4_rep2_read2.fastq.gz  md5sum.txt
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/1_fastq$ fastqc cd4_rep1_read1.fastq.gz -o ../3_analysis/1_fastqc 
application/gzip
Started analysis of cd4_rep1_read1.fastq.gz
Approx 5% complete for cd4_rep1_read1.fastq.gz
Approx 10% complete for cd4_rep1_read1.fastq.gz

Analysis complete for cd4_rep2_read2.fastq.gz
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/1_fastq$ ls
cd4_rep1_read1.fastq.gz  cd4_rep2_read2.fastq.gz  md5sum.txt
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/1_fastq$ cd /project/dpag0390/linux/3_analysis/1_fastqc 
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/1_fastqc$ ls
cd4_rep1_read1_fastqc.html  cd4_rep1_read1_fastqc.zip  cd4_rep2_read2_fastqc.html  cd4_rep2_read2_fastqc.zip
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/1_fastqc$ cd .     
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/1_fastqc$ cd ..
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ mkdir /reports
mkdir: cannot create directory ‘/reports’: Permission denied
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ mkdir reports
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ ls
1_fastqc  reports  rnaseq_commands.sh
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ multiqc --help
                                                                                                                                                                                
 /// MultiQC 🔍 v1.28                               


(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ ls
1_fastqc  reports  rnaseq_commands.sh
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ reports
zsh: command not found: reports
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ cd reports
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/reports$ ls
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/reports$ cd ..
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ cd 1_fastqc 
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/1_fastqc$ ls
cd4_rep1_read1_fastqc.html  cd4_rep1_read1_fastqc.zip  cd4_rep2_read2_fastqc.html  cd4_rep2_read2_fastqc.zip
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/1_fastqc$ multi qc . -o 3_analysis/reports
zsh: command not found: multi
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/1_fastqc$ multiqc . -o 3_analysis/reports


/// MultiQC 🔍 v1.28

       file_search | Search path: /project/dpag0390/linux/3_analysis/1_fastqc
         searching | ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 100% 4/4  
            fastqc | Found 2 reports
     write_results | Data        : /project/dpag0390/linux/3_analysis/reports/multiqc_data
     write_results | Report      : /project/dpag0390/linux/3_analysis/reports/multiqc_report.html
           multiqc | MultiQC complete
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/1_fastqc$ cd reports
cd: no such file or directory: reports
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/1_fastqc$ cd /reports
cd: no such file or directory: /reports
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/1_fastqc$ ls
cd4_rep1_read1_fastqc.html  cd4_rep1_read1_fastqc.zip  cd4_rep2_read2_fastqc.html  cd4_rep2_read2_fastqc.zip
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/1_fastqc$ cd ..
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ ls
1_fastqc  reports  rnaseq_commands.sh
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ cd reports
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/reports$ ls
multiqc_data  multiqc_report.html
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis/reports$ cd ..
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ rnase_commands.sh
zsh: command not found: rnase_commands.sh
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ rnaseq_commands.sh
zsh: command not found: rnaseq_commands.sh
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ nano rnaseq_commands.sh 
(obds-rnaseq) dpag0390@obds:/project/dpag0390/linux/3_analysis$ 
