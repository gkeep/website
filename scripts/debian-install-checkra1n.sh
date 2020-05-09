# run with `curl https://gkeep.xyz/scripts/add-checkra1n-repo.sh | bash`
echo "    $(tput bold)Adding checkra1n source...$(tput sgr0)"
echo "deb https://assets.checkra.in/debian /" | sudo tee -a /etc/apt/sources.list

echo "    $(tput bold)Adding checkra1n apt keys...$(tput sgr0)"
sudo apt-key adv --fetch-keys https://assets.checkra.in/debian/archive.key

echo "    $(tput bold)Installing checkra1n...$(tput sgr0)"
sudo apt update
sudo apt install checkra1n

echo "$(tput bold)checkra1n successfully installed!$(tput sgr0)"
