Saskatoon.ssh

head -5 /home/admin/access.log

# Extraire toutes les adresses IP et les mettre dans un fichier temporaire
awk '{print $1}' /home/admin/access.log > /tmp/ips.txt

# Trier les IPs pour regrouper les mêmes
sort /tmp/ips.txt > /tmp/ips_sorted.txt

# Compter combien de fois chaque IP apparaît
uniq -c /tmp/ips_sorted.txt > /tmp/ips_counted.txt

# Trier les résultats par nombre d’occurrences décroissant
sort -nr /tmp/ips_counted.txt > /tmp/ips_sorted_counted.txt

# Afficher seulement les 10 adresses IP les plus fréquentes
head /tmp/ips_sorted_counted.txt

# Afficher seulement les 10 adresses IP les plus fréquentes
awk '{print $1}' /home/admin/access.log | sort | uniq -c | sort -nr | head