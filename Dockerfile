FROM alpine:3.16

RUN apk add --no-cache openrc openssh-server && \
    rc-update add sshd default && \
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

RUN apk add lxqt-desktop lxqt-core lxqt-panel lxqt-admin lxqt-config lxqt-notificationd lxqt-powermanagement lxqt-themes openbox