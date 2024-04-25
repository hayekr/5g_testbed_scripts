sudo qmicli --device=/dev/cdc-wdm1 --device-open-proxy --dms-set-operating-mode=low-power
sudo qmicli --device=/dev/cdc-wdm1 --device-open-proxy --dms-set-operating-mode=online
sleep 4
sudo qmicli --device=/dev/cdc-wdm1 --device-open-proxy --wds-start-network="ip-type=4,apn=oai" --client-no-release-cid
sleep 1
sudo udhcpc -q -f -n -i wwan0

