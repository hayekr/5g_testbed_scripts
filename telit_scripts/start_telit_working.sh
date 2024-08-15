sudo qmicli -d /dev/cdc-wdm0 --dms-set-operating-mode='low-power'
sleep 1
sudo qmicli -d /dev/cdc-wdm0 --dms-set-operating-mode='online'
sleep 1
sudo ip link set wwan0 down
sleep 1
echo 'Y' | sudo tee /sys/class/net/wwan0/qmi/raw_ip
sleep 2
sudo ip link set wwan0 up
sleep 1
sudo qmicli -p -d /dev/cdc-wdm0 --device-open-net='net-raw-ip|net-no-qos-header' --wds-start-network="apn='oai',ip-type=4" --client-no-release-cid
sleep 2
sudo qmicli -p -d /dev/cdc-wdm0 --wds-get-packet-service-status
sudo qmicli -p -d /dev/cdc-wdm0 --wds-get-current-settings
sleep 2
sudo udhcpc -q -f -i wwan0
