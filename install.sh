#!/usr/bin/env bash
mkdir /etc/renice_processes_service/
yes | cp -f renice_processes_service.cfg /etc/renice_processes_service/
yes | cp -f renice_processes_service.service /usr/lib/systemd/system
yes | cp -f renice_processes_service /usr/bin/renice_processes_service
systemctl daemon-reload
systemctl enable renice_processes_service
systemctl start renice_processes_service
