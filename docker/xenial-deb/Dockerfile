FROM ubuntu:bionic
RUN apt-get update -qq
RUN apt-get install -qq software-properties-common
RUN add-apt-repository -y ppa:yubico/stable
RUN apt-get -qq update && apt-get -qq upgrade && apt-get install -y git devscripts equivs python3-dev python3-pip
COPY . yubikey-manager-qt
RUN yes | mk-build-deps -i /yubikey-manager-qt/debian/control
RUN cd yubikey-manager-qt && debuild -us -uc
RUN mkdir /deb && mv /yubikey-manager-qt_* /deb
RUN cd / && tar czf yubikey-manager-qt-debian-packages.tar.gz deb
RUN git clone https://github.com/Yubico/yubikey-manager
RUN yes | mk-build-deps -i /yubikey-manager/debian/control
RUN cd yubikey-manager && debuild -us -uc
RUN mv /yubikey-manager_* /python3-yubikey-manager_* /python-yubikey-manager_* /deb
