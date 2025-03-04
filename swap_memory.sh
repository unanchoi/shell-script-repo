sudo dd if=/dev/zero of=/swapfile bs=128M count=16

sudo chmod 600 /swapfile

sudo mkswap /swapfile

sudo swapon /swapfile

sudo swapon -s

echo '/swapfile swap swap defaults 0 0' | sudo tee -a /etc/fstab

# 업데이트
sudo apt update

# 업그레이드
sudo apt upgrade
