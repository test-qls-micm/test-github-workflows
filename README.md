# RNAseq Workshop Day 1

## Overview
An introduction to GEO (Gene Expression Omnibus) and Unix.

## Requirements
We will be using the Unix terminal to run our analyses, so please ensure you have access to one. 
- **Mac OS** and any Linux distribution will have a terminal pre-installed.
    - On Mac OS, search for "Terminal" in your Spotlight search.
- **Windows users:**
    - **Option 1:** Download a [Unix subsystem (WSL)](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview) (recommended).
    - **Option 2:** Download [MobaXterm](https://mobaxterm.mobatek.net/).
    - **Option 3:** You can use the following commands:
        ```bash
        wsl --install -d Ubuntu
        wsl -l -v
        wsl -d Ubuntu
        exit #or Ctrl+D
        ```

## Small Outline
- Setup & Troubleshooting
- Module 1 — GEO Basics
  - Accession types
  - Common files
  - FTP/HTTPS & Data Download
- Module 2 — UNIX Basics
  - File management and navigation
  - File inspection
  - Pipes and redirects
  - Text search

## References
The count matrix dataset is from the study: [GSE251845](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE251845).
The sequence data is sourced from this [repository](https://github.com/statOmics/SGA2019/tree/data-rnaseq/airway/fastQ).

*This workshop was created as part of the McGill Initiative in Computational Medicine.*
