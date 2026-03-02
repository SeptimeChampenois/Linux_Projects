ps aux | grep -i knock
#root         620  0.0  0.2   8504  1212 ?        Ss   20:55   0:00 /usr/sbin/knockd -i lo
@admin        765  0.0  0.1   5132   700 pts/1    S<+  20:56   0:00 grep -i knock
cat /etc/knockd.conf 
# /etc/knockd.conf: Permission denied
ls -al /etc/knockd.conf 
#-r--r----- 1 root root 169 Sep 19 00:23 /etc/knockd.conf
sudo -l
#Matching Defaults entries for admin on i-0b4255b88a167a9c5:
 #   env_reset, mail_badpass,
 #   secure_path=/usr/local/sbin\:/usr/local/bin\:/usr/sbin\:/usr/bin\:/sbin\:/bin

#User admin may run the following commands on i-0b4255b88a167a9c5:
 #   (ALL : ALL) ALL
 #   (ALL) NOPASSWD: /sbin/shutdown

cd agent/
ls
#check.sh  sadagent  sadagent.txt
file *
#check.sh:     Bourne-Again shell script, ASCII text executable
#sadagent:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, Go BuildID=H6A8cVluPFUvaNojVwMi/C5t-5rNiA5GJLWeSm5Qz/KXfivG_lDFnrqPGrWEJo/K_OQEFevUZEPr4lPEnoe, not stripped
s#adagent.txt: empty
 cat check.sh 
 
nmap -p- -T5 localhost
#Connaissant déjà les port-knockers via les CTF de hacking j’ai lancé un bête scan de port à deux reprises :

# nmap -p- -T5 localhost
#Starting Nmap 7.80 ( https://nmap.org ) at 2024-02-27 20:57 UTC
#Nmap scan report for localhost (127.0.0.1)
#Host is up (0.000076s latency).
#Not shown: 65532 closed ports
#PORT     STATE SERVICE
#22/tcp   open  ssh
#6767/tcp open  bmc-perf-agent
#8080/tcp open  http-proxy

#Nmap done: 1 IP address (1 host up) scanned in 1.09 seconds
 nmap -p- -T5 localhost
#Starting Nmap 7.80 ( https://nmap.org ) at 2024-02-27 20:57 UTC
#Nmap scan report for localhost (127.0.0.1)
#Host is up (0.000055s latency).
#Not shown: 65531 closed ports
#PORT     STATE SERVICE
#22/tcp   open  ssh
#80/tcp   open  http
#6767/tcp open  bmc-perf-agent
#8080/tcp open  http-proxy

#Nmap done: 1 IP address (1 host up) scanned in 2.00 seconds
./check.sh 
OK