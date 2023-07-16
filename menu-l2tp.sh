#!/bin/bash
# Getting
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/Jengkolonline/izinn/main/ip"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/Jengkol_Online"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6282372139631"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear
echo -e " \033[31m##########\033[33m##########\033[32m##########\033[34m##########\033[35m##########\033[36m##########\e[0m"
echo -e " \033[31m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[34m│$NC\033[33m                       MENU L2TP                          $NC\033[34m│\e[0m"
echo -e " \033[33m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e " \033[32m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[35m│$NC [01]${NC} \033[0;36m Create Account L2TP${NC}"
echo -e " \033[35m│$NC [02]${NC} \033[0;36m Extending Account L2TP${NC}"
echo -e " \033[35m│$NC [03]${NC} \033[0;36m Delete Account L2TP${NC}"
echo -e " \033[35m│$NC [04]${NC} \033[0;36m Install L2TP${NC}"
echo -e " \033[36m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e " \033[31m##########\033[33m##########\033[32m##########\033[34m##########\033[35m##########\033[36m##########\e[0m"
echo -e ""
read -p " Select From Options [ 1 - 4 ] :  "  opt
echo -e ""
case $opt in
1) clear ; addl2tp ; exit ;;
2) clear ; renewl2tp ; exit ;;
3) clear ; dell2tp ; exit ;;
4) clear ; wget https://raw.githubusercontent.com/Jengkolonline/ipsec/main/ipsec.sh && chmod +x ipsec.sh && ./ipsec.sh ; exit ;;
#5) systemctl stop xl2tpd ; exit ;;
#6) systemctl start xl2tpd ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu-ssh ;;
esac
