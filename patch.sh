# patch for virtual 21 image

cd /home/pi/stest

# upgrade numpy
pip install --upgrade numpy
sudo -u hd-cluster pip install --upgrade numpy

# add xhost +
sudo awk 'NR==122 {print "    xhost +"} {print}' head-node.bash.bu > head-node.bash
