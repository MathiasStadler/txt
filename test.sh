#!/bin/bash
dig +short  @192.168.178.32 mybyod.fritz.box
dig +short  @192.168.178.32 trapapa-ThinkCentre-M92P.fritz.box
dig +short  @192.168.178.32 docker-proxy.fritz.box

dig -x +short  @192.168.178.32 192.168.178.21
dig -x +short  @192.168.178.32 192.168.178.32
dig -x +short  @192.168.178.32 192.168.178.32