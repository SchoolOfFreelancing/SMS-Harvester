# Made For HackRF One

Combine Harvester For GSM SMS using Docker, noVNC, gr-gsm, wireshark, kalibrate-rtl, Ubuntu Linux 

# Quick Start

Install docker-ce, example given on Ubuntu 20.04 LTS Linux 

```
[000@cli~]$ sudo apt-get install curl
[000@cli~]$ curl -fsSL get.docker.com -o get-docker.sh
[000@cli~]$ sudo sh get-docker.sh
[000@cli~]$ sudo groupadd docker
[000@cli~]$ sudo usermod -aG docker $USER
[000@cli~]$ sudo systemctl enable docker && sudo systemctl start docker
```

Deploy.

```
[tony@localhost ~]$ docker run -i -t -d \
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

## Connect

### Via VNC

```
[Your IP]:5900
```

### Via HTTP

```
http://[Your IP]:6080
```
