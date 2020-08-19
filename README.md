# gsm-sniffing-docker

Docker with noVNC, gr-gsm, wireshark, kalibrate-rtl pre-installed.

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
 bclswl0827/gsm-sniffing:latest
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
