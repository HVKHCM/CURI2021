# patch for virtual 21 image

sudo head-node

# upgrade numpy
pip install --upgrade numpy
sudo su - hd-cluster <<EOF 
pip install --upgrade numpy
EOF

# fix /usr/HD, add xhost +
echo Issuing xhost +
cd /usr/HD
sudo chmod 755 .
#sudo cp head-node.bash head-node.bash.bu
sudo awk 'NR==123 {print "    xhost +"} {print}' head-node.bash > head-node.bash.new
sudo cp head-node.bash.new head-node.bash
sudo chmod +x head-node.bash
