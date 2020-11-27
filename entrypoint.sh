#!/bin/sh

if ! [ -e "/root/.ssh" ] ; then
  mkdir -p /root/.ssh
  chown root:root /root/.ssh
fi

echo "${ID_RSA}" > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

rsync -aHvP --numeric-ids --exclude='lost+found' -e "ssh -i /root/.ssh/id_rsa -p ${PORT} -l root -o StrictHostKeyChecking=no" ${SRC} ${DEST}
