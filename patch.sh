# patch for virtual 21 image

# upgrade numpy
pip install --upgrade numpy
sudo -u hd-cluster pip install --upgrade numpy

# add xhost +
cd /usr/HD
sudo mv head-node.bash head-node.bash.bu
sudo awk 'NR==122 {print "    xhost +"} {print}' head-node.bash.bu > head-node.bash
