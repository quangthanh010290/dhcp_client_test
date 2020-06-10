IF="eth1"
MAC="00:00:00:00:82:bf"
while true 
do
	hexchars="0123456789ABCDEF"
	end=$( for i in {1..6} ; do echo -n ${hexchars:$(( $RANDOM % 16 )):1} ; done | sed -e 's/\(..\)/-\1/g' )
	MAC="00-60-2F$end"
	echo -e "${GREEN}$MAC${NC}"
	sudo dhcp_client_test -m ${MAC} -i ${IF}
	sleep 3
done
