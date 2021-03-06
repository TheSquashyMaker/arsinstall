#!/user/env/bash

GRAY='\033[1;30m'; RED='\033[0;31m'; LRED='\033[1;31m'; GREEN='\033[0;32m'; LGREEN='\033[1;32m'; ORANGE='\033[0;33m'; YELLOW='\033[1;33m'; BLUE='\033[0;34m'; LBLUE='\033[1;34m'; PURPLE='\033[0;35m'; LPURPLE='\033[1;35m'; CYAN='\033[0;36m'; LCYAN='\033[1;36m'; LGRAY='\033[0;37m'; WHITE='\033[1;37m';
echo -n "${PURPLE}
    "Automated installation of SARNDBOX software (http://idav.ucdavis.edu/~okreylos/ResDev/SARndbox/LinkSoftwareInstallation.html)
    Copyright (C) 2019  TheSquashyMaker, Bill VanLoo, Nathan Hatt, Peter Jung

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>"
cd $HOME
if [ -f $HOME/src]; then
echo -n "${YELLOW}Removing old versions"
cd $HOME/src
rm -rf *
cd $HOME
fi
if [ -f $HOME/Build-Ubuntu.sh]; then
echo -n "${RED}Old version of Vrui detected, removing"
rm $HOME./Build-Ubuntu.sh
fi
if [ ! -f $HOME/Build-Ubuntu.sh]; then
echo -n "${GREEN}Installing Vrui Toolkit"
wget --quiet http://idav.ucdavis.edu/~okreylos/ResDev/Vrui/Build-Ubuntu.sh -o $HOME/Build-Ubuntu.sh
bash $HOME/Build-Ubuntu.sh
echo "${GREEN}Done"
rm $HOME/Build-Ubuntu.sh
fi
cd ~/src
wget --quiet http://idav.ucdavis.edu/~okreylos/ResDev/Kinect/Kinect-3.7.tar.gz
tar xfz Kinect-3.7.tar.gz
cd Kinect-3.7
make
make install
make installudevrules
cd $HOME
cd ~/src
wget --quiet http://idav.ucdavis.edu/~okreylos/ResDev/SARndbox/SARndbox-2.6.tar.gz
tar xfz SARndbox-2.6.tar.gz
cd SARndbox-2.6
make
cd $HOME
echo -n "${GREEN}Done!"
