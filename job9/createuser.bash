sudo adduser $1
sudo touch /etc/proftpd/ftpd.passwd
sudo touch /etc/proftpd/ftpd.group
sudo mkdir /home/"$1"
sudo passwd $1
$2
$2
sudo ftpasswd --passwd --name="$1" --uid=1002 --file=/etc/proftpd/ftpd.passwd --home=/home/"$1" –shell=/bin/false