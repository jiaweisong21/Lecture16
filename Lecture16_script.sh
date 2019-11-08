import os
import numpy as np
import matplotlib.pyplot as plt
ecoli = open("ecoli.txt").read().replace('\n', '').upper()[0:100000]
window=100
at = []
for start in range(len(ecoli) - windows):
win = ecoli[start:start:start+windows]
for start in range(len(ecoli) - windows):
    win = ecoli[start:start + window]
    at.append(  (win.count('A')+win.count('T')) / window)
ecoli = open("ecoli.txt").read().replace('\n', '').upper()[0:100000]
quit()
import os
import matplotlib.pyplot as plt
ecoli = open("ecoli.txt").read().replace('\n', '').upper()[0:100000]
window = 1000
at = []
for start in range(len(ecoli) - window):
    win = ecoli[start:start+window]
    at.append(  (win.count('A')+win.count('T')) / window)
plt.figure(figsize=(20,10))
plt.plot(at, label="AT content",linewidth=3,color="purple")
plt.ylabel('Fraction of bases')
plt.xlabel('Position on genome')
plt.title("EXERCISE 1\nAT content, 1kb windows of the E.coli genome")
plt.legend()
plt.savefig("Lecture16_Exercise_1.png",transparent=True)
plt.show()
aln = open("alignment.txt")
aligned_seqs = []
counter =0
for line in aln:
    counter += 1
    print("Sequence",counter,"was",len(line.rstrip("\n")),"long")
    aligned_seqs.append(line.rstrip("\n"))
alignment_length = len(aligned_seqs[0])
uniques_per_column = []
for column_number in range(alignment_length):
    column = []
    for seq in aligned_seqs:
        aa = seq[column_number]
        if aa != '-':  # ignore gaps
            column.append(seq[column_number])
    uniques = len(set(column))
    uniques_per_column.append(uniques)
window = 10
numbers_to_plot = []
for start in range(len(uniques_per_column) - window):
    win = uniques_per_column[start:start+window]
    score = sum(win) / len(win)
    numbers_to_plot.append(score)
plt.figure(figsize=(15,8))
plt.xlim(0,len(numbers_to_plot))
plt.plot(numbers_to_plot,linewidth=3,color="green")
plt.title('EXERCISE 2')
plt.ylabel('Unique amino acid residues')
plt.xlabel('Residue position')
plt.savefig("Lecture16_Exercise_2.png",transparent=True)
plt.show()
quit()
