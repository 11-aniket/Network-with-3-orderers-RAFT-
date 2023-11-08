echo "**************************************************************"
echo "Removing All docker containers"
echo "**************************************************************"
echo
docker rm -vf $(docker ps -aq)
sleep 1

cd ${PWD}/channel-artifacts/
sudo rm -rf mychannel.block

cd ../artifacts/channel/

echo
echo "*************************************************************************"
echo "Removing crypto-config genesis mychannel and anchors"
echo "*************************************************************************"

echo

sudo rm -rf crypto-config/
sudo rm -rf genesis.block
sudo rm -rf mychannel.tx
sudo rm -rf Org1MSPanchors.tx
sudo rm -rf Org2MSPanchors.tx



cd ../../caliper/caliper-benchmarks-local/networks/fabric/base

echo
echo "*************************************************************************"
echo "Removing crypto-config from networks base folder in caliper directory"
echo "*************************************************************************"
echo

sudo rm -rf crypto-config/