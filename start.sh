#!/bin/sh

if [ -z "$SERVERIP" ]; then
  echo "Environment variable SERVERIP must be set."; exit 1;
fi

# IPTables prerouting

echo "SERVER:"${SERVERIP};
echo "PORT:"${SERVERPORT};


if [ -z "$SERVERPORT" -o -z "$HOSTPORT" ]; then
  iptables -t nat -A PREROUTING -i eth0 -j DNAT --to-destination ${SERVERIP} > /dev/null 2>&1
else
  iptables -t nat -A PREROUTING -p tcp --dport ${HOSTPORT} -j DNAT --to-destination  ${SERVERIP}:${SERVERPORT}
fi

# Create rules for postrouting
iptables -t nat -A POSTROUTING -j MASQUERADE

# Setup masquerade, to allow using the container as a gateway
for iface in $(ip a | grep eth | grep inet | awk '{print $2}'); do
  iptables -t nat -A POSTROUTING -s "$iface" -j MASQUERADE
done

while [ true ]; do
    sleep 3600;
done