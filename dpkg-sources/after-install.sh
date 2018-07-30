#!/bin/bash

USERNAME="prometheus"

id -u $USERNAME >/dev/null 2>&1 || useradd -r -U -d /var/lib/prometheus -s /usr/sbin/nologin -c "Prometheus daemon,,," $USERNAME
chown $USERNAME:$USERNAME -R /var/lib/prometheus /var/log/prometheus
