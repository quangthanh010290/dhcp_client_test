RED='\033[0;31m'
GREEN='\033[0;32m'
YEL='\033[0;33m'
BLUE='\033[0;34m'
PUR='\033[0;35m'
COL='\033[0;36m'
NC='\033[0m' # No Color
HERE="`pwd`"
# Change IF to the real interface on your PC
IF="eth1"
while true 
do
	hexchars="0123456789ABCDEF"
	end=$( for i in {1..6} ; do echo -n ${hexchars:$(( $RANDOM % 16 )):1} ; done | sed -e 's/\(..\)/:\1/g' )
	MAC="00:60:2F$end"
	echo -e "${GREEN}$MAC${NC}"
	sudo ./dhcp_client_test -m ${MAC} -i ${IF}
	sleep 3
done
