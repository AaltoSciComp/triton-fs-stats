# Triton Filesystem Statistics

This repository contains some scripts that we have used to check some basic
filesystem statistics in Aalto University's Triton cluster.

## Scripts

### Filesizes

This folder contains a script that we have used to measure file size
distributions on our filesystem , the data we obtained, a Python
notebook used for plotting the data and some images created by the notebook.

- `get_filesizes.sh`: This simple script goes through our filesystem, stats
  byte size of every file, rounds it down to nearest power of 2, counts how
  many instances there are and outputs a sorted distribution.
- `filesizes.txt`: Raw data given by `get_filesizes.sh`.
- `filesizes_to_csv.ipynb`: Small notebook that saves the raw data in csv format.
- `filesizes.csv`: Data in CSV format.
- `filesizes.ipynb`: Small statistics notebook, that calculated statistics
  shown below.

### Filesize statistics

The notebook `filesizes.ipynb` calculates probability distribution function
(PDF) and the cumulative distribution function (CDF) for the file numbers and
then fits a Gaussian CDF to the data. After that it plots file number and
file number CDF vs. file size. It also calculates the median file size.

After this it calculates the PDF and the CDF for the actual file system usage,
that is file numbers multiplied by file sizes. A skewed normal distribution
function CDF is then fitted to the CDF. Plots include file usage, file usage
CDF and cumulative file usage vs. file size. Plots also include extra marks
at places where half the files and two-thirds of the files are situated.

Plots:

- `filesizes.png` - File number vs. file size
- `filesizes_cdf.png` - File number CDF vs. file size
- `usage.png` - File usage vs. file size
- `usage_cdf.png` - File usage CDF vs. file size
- `usage_cumulative.png` - Cumulative file usage vs. file size

## Stats

### ddn-scratch

Old DDN provided lustre filesystem. Deprecated in 2021. Data was measured in Sep 2020.
