#!/bin/bash

SERVER_IP=$(ip route get 8.8.8.8 | awk '{ print $NF; exit }') docker-compose up -d