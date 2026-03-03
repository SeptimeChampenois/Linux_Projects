Lhasa.sh

cut -d' ' -f2 scores.txt
cut -d' ' -f2 scores.txt | paste -sd+ | bc
wc -l < scores.txt
echo "520.4 / 100" | bc
echo "scale=2; 520.4 / 100" | bc


sum=$(cut -d' ' -f2 scores.txt | paste -sd+ | bc)
count=$(wc -l < scores.txt)
echo "scale=2; $sum / $count" | bc > ~/solution

# Version one-liner AWK
# awk '{sum+=$2} END{printf "%.2f\n", sum/NR}' scores.txt > ~/solution

awk '{sum+=$2} END{printf "%.2f\n", sum/NR}' scores.txt

#$2    → colonne 2
#sum   → accumule la somme
#NR    → nombre de lignes (NR = Number of Records)
#%.2f  → 2 décimales sans arrondi

#AWK parcourt chaque ligne
 #   │
 #   ├── $2    → 7.4, 0.4, 1.6...
 #   ├── sum   → 520.4
 #   └── NR    → 100
 #         │
 #         ▼
#  sum/NR = 5.20