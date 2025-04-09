#!/bin/bash

kubeadm join 10.0.0.10:6443 --token esenbf.0ays31i5r5chu07y --discovery-token-ca-cert-hash sha256:2f0ad9a0818f71914bd5270a906a1e1ea20576d88eac3939853801cef049add4 

#sudo kubeadm join 10.128.0.37:6443 --token j4eice.33vgvgyf5cxw4u8i \
#    --discovery-token-ca-cert-hash sha256:37f94469b58bcc8f26a4aa44441fb17196a585b37288f85e22475b00c36f1c61
