# short test suite for a single node
# first, execute
#   git clone https://github.com/HVKHCM/CURI2021-Raspberry-Pi.git stest

cd /home/pi/stest

./patch.sh || { echo "patch.sh failed" ; exit 1; }

./runtest.sh && { cd .. ; rm -rf stest ; }

