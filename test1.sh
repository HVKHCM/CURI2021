# short test suite for a single node
# to execute:
# git clone https://github.com/HVKHCM/CURI2021-Raspberry-Pi.git stest; stest/test1.sh

cd /home/pi/stest

./patch.sh || { echo "patch.sh failed" ; exit 1; }

./runtest.sh && { cd .. ; rm -rf stest ; }

sudo worker-node 
