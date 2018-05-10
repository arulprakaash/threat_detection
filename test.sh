chmod 777 myfile.pcap
rm /var/log/snort/alert
sudo snort -k none -A fast -c /etc/snort/snort_dos.conf -r myfile.pcap
sudo snort -k none -A fast -c /etc/snort/snort_backdoor.conf -r myfile.pcap
sudo snort -k none -A fast -c /etc/snort/snort_xssssl.conf -r myfile.pcap
sudo snort -k none -A fast -c /etc/snort/snort_sql.conf -r myfile.pcap
cp /var/log/snort/alert /home/arul/Documents/pcap/maccdc2012/project_files/alert.txt
chmod 777 alert.txt
awk '{print $(NF-2)}' ./alert.txt > migom.txt
