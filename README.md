# Made For HackRF One

Combine Harvester For GSM SMS using Docker, noVNC, gr-gsm, wireshark, kalibrate-rtl, Ubuntu Linux. This tolls will be used for analyze GSM network vaurnability test for cell towers not for bad hacking. 

Caution: School Of Freelancing will not responsiable for wrong use for this repository. Only use this repository for R&D and PEN TEST purpose.  


# Quick Start

Install docker-ce, example given on Ubuntu 20.04 LTS Linux 

```
sudo apt-get install curl
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl start docker
sudo systemctl enable docker  
sudo systemctl restart docker
sudo systemctl status docker
``

Deploy.

```
sudo -i
git clone https://github.com/SchoolOfFreelancing/SMS-Harvester.git
cd SMS-Harvester 
docker run -i -t -d \
 --name GSM \
 --restart always \
 -p 5900:5900 \
 -p 6080:6080 \
 --device /dev/bus/usb \
 -e VNC_PASSWD="168168" \
 -e GEOMETRY="1280x720" \
 -e DEPTH=32 \
 bclswl0827/gsm-sniffing-docker:latest
```

### Connect Via HTTP
```
http://0.0.0.0:6080/
```

