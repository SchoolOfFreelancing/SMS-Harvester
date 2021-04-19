# Made For HackRF One

Combine Harvester For GSM SMS using Docker, noVNC, gr-gsm, wireshark, kalibrate-rtl, Ubuntu Linux. These tools will be used to analyze GSM network vulnerability test for cell towers and not for unethical hacking. 

Caution: School Of Freelancing will not responsiable for wrong use for this repository. Only use this repository for R&D and PEN TEST purpose.  

# Quick Start

Install docker-ce, example given on Fedora Linux.

```
[tony@localhost ~]$ sudo dnf install curl
[tony@localhost ~]$ curl -fsSL get.docker.com -o get-docker.sh
[tony@localhost ~]$ sudo sh get-docker.sh
[tony@localhost ~]$ sudo groupadd docker
[tony@localhost ~]$ sudo usermod -aG docker $USER
[tony@localhost ~]$ sudo systemctl enable docker && sudo systemctl start docker
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
