#!/user/env/bash

GRAY='\033[1;30m'; RED='\033[0;31m'; LRED='\033[1;31m'; GREEN='\033[0;32m'; LGREEN='\033[1;32m'; ORANGE='\033[0;33m'; YELLOW='\033[1;33m'; BLUE='\033[0;34m'; LBLUE='\033[1;34m'; PURPLE='\033[0;35m'; LPURPLE='\033[1;35m'; CYAN='\033[0;36m'; LCYAN='\033[1;36m'; LGRAY='\033[0;37m'; WHITE='\033[1;37m';

if [ ! -f $HOME/Build-Ubuntu.sh]; then
echo "${GREEN}Installing Vrui Toolkit"
wget --quiet http://idav.ucdavis.edu/~okreylos/ResDev/Vrui/Build-Ubuntu.sh
bash $HOME/Build-Ubuntu.sh
fi
