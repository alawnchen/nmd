#!/bin/bash
clear
echo -e "\e[1;31m"
echo ' _   _  ___    __  __  ___  ____  _____   ____  ____   ___  ____'
echo '| \ | |/ _ \  |  \/  |/ _ \|  _ \| ____| |  _ \|  _ \ / _ \/ ___|'
echo '|  \| | | | | | |\/| | | | | |_) |  _|   | | | | | | | | | \___ \'
echo '| |\  | |_| | | |  | | |_| |  _ <| |___  | |_| | |_| | |_| |___) |'
echo '|_| \_|\___/  |_|  |_|\___/|_| \_\_____| |____/|____/ \___/|____/'
echo '=================================================================='
echo
echo -e "\e[0m"
echo
echo -e "--> Enter IP to \e[1;91mban\e[0;39m (xxx.xxx.xxx.xxx format)"
echo ""
read IP
echo
/sbin/iptables -A INPUT -s "$IP" -j DROP
echo '--> Done !'
echo
sleep 3
clear
echo -e "\e[1;31m"
echo ' _   _  ___    __  __  ___  ____  _____   ____  ____   ___  ____'
echo '| \ | |/ _ \  |  \/  |/ _ \|  _ \| ____| |  _ \|  _ \ / _ \/ ___|'
echo '|  \| | | | | | |\/| | | | | |_) |  _|   | | | | | | | | | \___ \'
echo '| |\  | |_| | | |  | | |_| |  _ <| |___  | |_| | |_| | |_| |___) |'
echo '|_| \_|\___/  |_|  |_|\___/|_| \_\_____| |____/|____/ \___/|____/'
echo '=================================================================='
echo
echo -e "\e[0m"
echo '---> Ban list in IPTABLES :'
echo '==========================='
echo
echo -e "\e[93m"
iptables -L INPUT -v -n
echo -e "\e[39m"