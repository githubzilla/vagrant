#!/usr/bin/env bash
ssh-keygen -t rsa -b 4096 -C "ubuntu for jenkins"
cat jenkins_id_rsa.pub >> .ssh/authorized_keys

