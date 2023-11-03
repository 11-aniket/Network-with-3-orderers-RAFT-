echo
echo "**************************************************************"
echo "########   Start Network Up    #############"
echo "**************************************************************"
echo
echo
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
echo "**************************************************************"
echo "Removing crypto-config genesis mychannel and anchors"
echo "**************************************************************"
echo

sudo rm -rf crypto-config/
sudo rm -rf genesis.block
sudo rm -rf mychannel.tx
sudo rm -rf Org1MSPanchors.tx
sudo rm -rf Org2MSPanchors.tx

sleep 1
echo
echo "**************************************************************"
echo "creating crypto materials"
echo "**************************************************************"
echo
./create-artifacts.sh
cd ../
sleep 2
docker-compose up -d
cd ../
sleep 5
echo
echo "**************************************************************"
echo "create channel"
echo "**************************************************************"
echo
./createChannel.sh
sleep 2
echo
echo "**************************************************************"
echo "deploy base chaincode for fabcar"
echo "**************************************************************"
echo
./deployChainCode.sh

echo
echo "**************************************************************"
echo "########   Network Up   #############"
echo "**************************************************************"
echo
