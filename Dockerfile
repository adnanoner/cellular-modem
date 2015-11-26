FROM resin/armv7hf-systemd:jessie

ENV INITSYSTEM on

RUN echo "resolvconf resolvconf/linkify-resolvconf boolean false" | debconf-set-selections

RUN apt-get update && apt-get install -y usbutils usb-modeswitch usb-modeswitch-data wvdial ifupdown resolvconf

ADD init.sh /init.sh

ADD wvdial.conf /etc/wvdial.conf

CMD /init.sh
