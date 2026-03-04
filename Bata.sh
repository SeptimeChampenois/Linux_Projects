Bata.sh

grep -r "secret:" /proc/sys

grep -r "secret:" /proc/sys 2>/dev/null | cut -d':' -f3

#2>/dev/null → ignore les erreurs (permission denied)
#cut -d':'   → découpe avec : comme délimiteur
#-f3         → prend le 3ème champ

grep -r "secret:" /proc/sys 2>/dev/null | awk -F':' '{print $3}'