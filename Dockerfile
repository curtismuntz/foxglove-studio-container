from ubuntu:22.04

run apt-get update && apt-get upgrade -y
run apt-get install -y wget curl libasound2
#run wget https://get.foxglove.dev/desktop/latest/foxglove-studio-latest-linux-amd64.deb
run wget https://get.foxglove.dev/desktop/v2.20.0/foxglove-studio-2.20.0-linux-amd64.deb
run apt install ./foxglove-studio-*.deb -y
run apt install -y \
  libgl1-mesa-dri \
	libgl1-mesa-glx \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg \
	hicolor-icon-theme \
	libcanberra-gtk* \
	libpulse0 \
	libv4l-0 \
	dbus \
	dbus-x11 \
	x11-utils \
	xdg-utils \
	vim\
	libglib2.0-dev \
	fonts-symbola


  #
	#libpangox-1.0-0 \
run useradd -ms /bin/bash foxglove_user

env XAUTHORITY=/home/foxglove_user/.Xauthority

#entrypoint [ "foxglove-studio", "--no-sandbox" ]
entrypoint [ "foxglove-studio" ]

#entrypoint [ "xdg-open", "https://www.example.com" ]
