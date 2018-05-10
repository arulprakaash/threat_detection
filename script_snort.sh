rm /var/log/snort/alert
sudo snort -k none -A fast -c /etc/snort/snort_dos.conf -r myfile.pcap
sudo snort -k none -A fast -c /etc/snort/snort_backdoor.conf -r myfile.pcap
sudo snort -k none -A fast -c /etc/snort/snort_xssssl.conf -r myfile.pcap
sudo snort -k none -A fast -c /etc/snort/snort_sql.conf -r myfile.pcap
