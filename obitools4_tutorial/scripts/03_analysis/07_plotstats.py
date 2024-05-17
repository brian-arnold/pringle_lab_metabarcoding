#!/usr/bin/python -tt

"""
"""

import re
import sys
import os
from collections import defaultdict
import seaborn as sns
import matplotlib.pyplot as plt

def main():

  infile = sys.argv[1]

  outdir = "/scratch/gpfs/bjarnold/Pringle/obitools4_tutorial/wolf_data_results"
  counts = []
  with open(infile, 'r') as f:
    for line in f:
      line = line.strip()
      if line.startswith('>'):
        line = line.split()
        info = line[1]
        # use regex to extract the the count data, which appears in strings like this: {"count":1,"merged_sample":{"26a_F040644":1}
        count = re.search(r'{"count":(\d+),', info).group(1)
        counts.append(int(count))

  sns.histplot(counts, bins=100)
  plt.xscale('log')
  plt.yscale('log')
  # plt.xticks(rotation=90)
  sns.despine()
  # save the figure
  outfile = f"{outdir}/Num_occurrences_of_variant.png"
  plt.savefig(outfile, dpi=300)


if __name__ == '__main__':
  main()
