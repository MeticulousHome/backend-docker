# backend-docker
transitional repo for docker images containing the meticulous backend

run with
```
./run_docker.sh
```

## Creating the connecition QRCode
To create the connection QRcode which tells the App where to connect to you need to provide the
containers IP and port.

Example:
If the computer running the docker container is connected with the IP 192.168.1.42 the QR code
should contain "http://192.168.1.42:8080".

This can be generated with

```
qrencode "http://192.168.1.42:8080" -s 12 -t png -o qr.png
```

On macOS qrencode can be installed from homebrew
```
brew install qrencode
```

While on most linux system it is part of the system packages
```
sudo apt install qrencode
```
