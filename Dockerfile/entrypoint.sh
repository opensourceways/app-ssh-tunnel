#!/bin/sh
#prepare ssh related files
rm -rf /root/.ssh && mkdir /root/.ssh && cp -R /root/ssh/* /root/.ssh/ && chmod -R 600 /root/.ssh/*
exec /sbin/tini -- ssh -v -o StrictHostKeyChecking=no -N $TUNNEL_HOST $@