# patch for virtual 21 image

# upgrade numpy
pip install --upgrade numpy
sudo su - hd-cluster <<EOF 
pip install --upgrade numpy
EOF

# add xhost +
echo Issuing xhost +
cd /usr/HD
sudo mv head-node.bash head-node.bash.bu
sudo awk 'NR==123 {print "    xhost +"} {print}' head-node.bash.bu > head-node.bash
