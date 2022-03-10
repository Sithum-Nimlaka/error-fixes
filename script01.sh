#Fix Failed to download metadata for repo
#CentOS Linux 8 had reached the End Of Life (EOL) on December 31st, 2021.
#It means that CentOS 8 will no longer receive development resources from the official CentOS project. 
#After Dec 31st, 2021, if you need to update your CentOS, you need to change the mirrors to vault.centos.org where they will be archived permanently.
#Alternatively, you may want to upgrade to CentOS Stream.

echo "####################################################"
echo "##### Fix Failed to download metadata for repo #####"
echo "####################################################"
echo "[+] Started!"

cd /etc/yum.repos.d/
sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
sudo yum update
