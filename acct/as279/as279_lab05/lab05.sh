#!/bin/bash
# 1. Download file
wget https://raw.githubusercontent.com/s7117/csce215labs/main/mnist_condensed.csv -O mnist_condensed.csv

# 2. Get first 10 lines
head mnist_condensed.csv

# 3. Get last 8th, 9th, and 10th lines
tail -n 10 mnist_condensed.csv | head -n 3

# 4. Redirect output to file
tail -n 10 mnist_condensed.csv | head -n 3 > lab05.out

# 5. Count lines in lab05.out
wc -l < lab05.out

# 6. Overwrite 23rd line to lab05.out
sed -n '23p' mnist_condensed.csv > lab05.out

# 7. Count lines in lab05.out using cat and wc
cat lab05.out | wc -l

# 8. Append output of step 3 and 6 to lab05.out
tail -n 10 mnist_condensed.csv | head -n 3 >> lab05.out
sed -n '23p' mnist_condensed.csv >> lab05.out

# 9. Count lines in lab05.out
wc -l lab05.out

# 10. Create directories dirA through dirZ
mkdir {dirA,dirB,dirC,dirD,dirE,dirF,dirG,dirH,dirI,dirJ,dirK,dirL,dirM,dirN,dirO,dirP,dirQ,dirR,dirS,dirT,dirU,dirV,dirW,dirX,dirY,dirZ}

# 11. Create empty files in each directory
for dir in {dirA,dirB,dirC,dirD,dirE,dirF,dirG,dirH,dirI,dirJ,dirK,dirL,dirM,dirN,dirO,dirP,dirQ,dirR,dirS,dirT,dirU,dirV,dirW,dirX,dirY,dirZ}; do
    touch $dir/file{01..10}.txt
done

# 12. Create directories 'dir123' and 'dir'
mkdir dir123 dir

# 13. Create directory 'OLD'
mkdir OLD

# 14. Move directories and file to 'OLD'
mv dir* mnist_condensed.csv OLD/

# 15. Delete 'OLD' directory
rm -r OLD

# 16. Verify only lab05.sh and lab05.out files remain
ls
