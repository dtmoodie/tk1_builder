ARG stage0=jetson/tk1/base0
FROM ${stage0} as deps

FROM scratch

WORKDIR /

COPY --from=deps /jetpack/Linux_for_Tegra/rootfs/ /


COPY cuda* .
RUN dpkg -i cuda-repo*
RUN apt update
RUN apt-get install cuda-toolkit-6-5 -y
SHELL ["/bin/bash", "-c"]]
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install build-essential wget curl -y
RUN wget https://github.com/Kitware/CMake/archive/v3.14.7.tar.gz && tar xvf v3.14.7.tar.gz

RUN cd CMake* && ./bootstrap --prefix=/usr/local && make -j24&& make install

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    libpython3-dev \
    libpython2.7-dev \
    curl git

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python2 get-pip.py
RUN python3 get-pip.py
RUN python3 -m pip install numpy 
RUN python2 -m pip install numpy==1.15

RUN apt-get remove --purge -y \
    gstreamer0.10-alsa \
    gstreamer0.10-nice \
    gstreamer0.10-plugins-bad \
    gstreamer0.10-plugins-base \
    gstreamer0.10-plugins-good \
    gstreamer0.10-pulseaudio \
    gstreamer0.10-tools \
    gstreamer0.10-x \
    libgstreamer-plugins-base0.10-0 \
    libgstreamer0.10-0 

RUN dpkg --remove \
    unity-control-center \
    unity-control-center-signon \
    indicator-bluetooth \
    webaccounts-extension-common \
    xul-ext-webaccounts


RUN dpkg --remove \
    totem \
    libfarstream-0.2-2 \
    libtelepathy-farstream3 \
    libclutter-gst-2.0-dev \
    libcheese7 \
    totem-plugins \
    totem-mozilla \
    gnome-contacts \
    libcheese-gtk23 \
    cheese \
    empathy \
    account-plugin-salut \
    mcp-account-manager-uoa \
    nautilus-sendto-empathy \
    account-plugin-jabber

RUN dpkg --remove\
    gstreamer1.0-alsa \
    gstreamer1.0-clutter \
    gstreamer1.0-nice

RUN dpkg --remove \
    ubuntu-docs \
    gnome-user-guide

RUN dpkg --remove \
    zenity \
    yelp \
    python-qt4 \
    metacity \
    ubuntu-sso-client-qt

RUN dpkg --remove \
    signon-ui \
    signon-plugin-oauth2 \
    libaccount-plugin-google \
    libaccount-plugin-generic-oauth \
    account-plugin-google \
    account-plugin-windows-live \
    account-plugin-flickr \
    account-plugin-twitter \
    account-plugin-facebook \
    unity-scope-gdrive \
    friends-twitter \
    friends-facebook

RUN dpkg --remove \
    libyelp0

RUN dpkg --remove \
    rhythmbox-plugin-cdrecorder \
    rhythmbox-plugin-zeitgeist \
    rhythmbox-plugin-magnatune \
    rhythmbox-mozilla \
    rhythmbox-plugins \
    rhythmbox

RUN dpkg --remove \
    nautilus-share \
    software-center \
    apturl \
    ubuntu-release-upgrader-gtk \
    update-notifier \
    update-manager

RUN dpkg --remove \
    shotwell \
    librhythmbox-core8 \
    gir1.2-rb-3.0  \
    gir1.2-webkit-3.0 \
    xul-ext-unity \
    xul-ext-websites-integration

RUN dpkg --remove \
    qtdeclarative5-ubuntu-ui-toolkit-plugin \
    qtdeclarative5-ubuntu-ui-extras-browser-plugin \
    libqt5webkit5-qmlwebkitplugin \
    libqt5webkit5 \
    libqtwebkit4 \
    libwebkitgtk-3.0-0 \
    checkbox-gui \
    unity-webapps-qml \
    webapp-container \
    webbrowser-app \
    unity-webapps-service \
    unity-webapps-common \
    libunity-webapps0

RUN dpkg --remove \
    brasero \
    brasero-cdrkit

RUN dpkg --remove \
    libdmapsharing-3.0-2 \
    libbrasero-media3-1

RUN dpkg --purge \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-base-apps \
    gstreamer1.0-plugins-good \
    gstreamer1.0-pulseaudio \
    gstreamer1.0-tools \
    gnome-video-effects \
    libtotem0 \
    unity-lens-music \
    libclutter-gst-2.0-0 \
    libthumbnailer0 \
    gir1.2-totem-1.0 \
    unity-lens-video

RUN dpkg --remove \
    sessioninstaller \
    gir1.2-gstreamer-1.0 \
    gir1.2-gst-plugins-base-1.0

RUN dpkg --purge \
    gstreamer1.0-x \
    libgstreamer-plugins-base1.0-0 \
    libgstreamer-plugins-good1.0-0 \
    libgstreamer1.0-0
