#!/bin/ash
for word in $DUCKDOMAIN;do
        echo url="https://www.duckdns.org/update?domains=$word&token=$DUCKTOKEN&ip=" | curl -k -o /duckdns/duck.log -K -
done
echo `date` > /duckdns/latestUpdateTime.log

