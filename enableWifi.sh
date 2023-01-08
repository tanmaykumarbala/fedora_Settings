homePath="/home/tanmaybala/Downloads/"
repoPath=$homePath"rtl8852be"

echo "Installing Dependencies."
$(sudo dnf install kernel-headers kernel-devel-`uname -r` make automake cmake gcc gcc-c++ bc)
sleep 1
echo "Removing old Directory if exist."
if [ -d $repoPath ] then
	$(rm -rf $repoPath)
fi
$(cd $homePath)
echo "Cloning Repo."
$(git clone https://github.com/HRex39/rtl8852be.git -b dev)
echo "Entering in repo direcory."
$(cd $repoPath)
echo "Compiling the driver frome repo."
$(make -j8)
echo "Installing the driver and enabling the wifi driver for rtl8852be"
$(sudo make install)
$(sudo modprobe 8852be)
