tcpdump -i wlo1 -w  myfile.pcap & pid=$!
sleep 10s
kill $pid
rm /var/log/snort/alert


