Saint_John".sh

# Affiche le log en temps réel
tail -f /var/log/bad.log

# Liste les fichiers ouverts dans /var/log
lsof +D /var/log

# Tue le processus 588
kill 588