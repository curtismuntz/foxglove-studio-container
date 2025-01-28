#!/usr/bin/env bash


set -xe

  #-v /dev/snd:/dev/snd \
docker run --rm -it \
  -v /etc/localtime:/etc/localtime:ro \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  -h $HOSTNAME \
  -v $HOME/.Xauthority:/home/foxglove_user/.Xauthority \
  -v /run/dbus:/run/dbus:ro \
  -v /var/run/user/$(id -u):/var/run/user/$(id -u) \
  -v $HOME/.config:/home/foxglove_user/.config \
  -e XDG_CONFIG_HOME="/home/foxglove_user/.config" \
  -e XDG_RUNTIME_DIR="/var/run/user/$(id -u)" \
  -e DBUS_SESSION_BUS_ADDRESS="unix:path=/var/run/user/1000/bus" \
  -v $(pwd):/opt/host \
  -v $HOME/Desktop/tmp:/opt/host/Desktop \
  --user $(id -u) \
  --net=host \
  --privileged \
  foxglove-studio
