#!/bin/bash
IF="wlan0"
MAC="`cat /sys/class/net/${IF}/address`"
echo "dhcp_client_test -m ${MAC} -i ${IF}}"
case "${1}" in
"")
    sudo dhcp_client_test -m ${MAC} -i ${IF}
;;
"release")
    sudo dhcp_client_test -m ${MAC} -i ${IF} -r
;;
"125")
    sudo dhcp_client_test -m ${MAC} -i ${IF} -c 125,hex,00000de9210106443441393238020c4d4357374d324b46303730310309495053544231333030
;;
"82")
    sudo dhcp_client_test -m ${MAC} -i ${IF} -c 82,hex,0108476967302f312f30021130303a30303a30303a31313a31313a3131
;;
"all")
sudo dhcp_client_test -m ${MAC} -i ${IF} -c 61,hex,0120c0470ec31c -c 57,hex,0240  -c 60,hex,49502d535442 -c 125,hex,00000de9210106443441393238020c4d4357374d324b46303730310309495053544231333030 -c 12,str,Fios-TV-STB9EEF9775
;;
esac
echo "dhcp_client_test -m ${MAC} -i ${IF}"
