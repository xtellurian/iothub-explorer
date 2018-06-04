# IoT Hub Explorer - CLI Container

```
docker run -it flanagan89/iothub-explorer:latest /bin/bash
```

## Docker Compose

```yaml
version:  '3'
services:
  iot-ex:
      image: flanagan89/iothub-explorer:latest 
      stdin_open: true
      tty: true
      container_name: iothub-explorer-cli

```

`docker-compose run iot-ex`

## Useage

`iox` is an alias for `iothub-explorer`

* Login to IoT Hub

```
iox login "HostName=<my-hub>.azure-devices.net;SharedAccessKeyName=<my-policy>;SharedAccessKey=<my-policy-key>"
```

Monitor all events

```
iox monitor-events --login "HostName=<my-hub>.azure-devices.net;SharedAccessKeyName=<my-policy>;SharedAccessKey=<my-policy-key>"
```
