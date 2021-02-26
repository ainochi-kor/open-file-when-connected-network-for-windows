@setlocal enableextensions enabledelayedexpansion
@echo 네트워크에 접속 중입니다. 잠시만 기다려 주십시오.
@echo off
set ipaddress="google.com"
:loop
timeout /nobreak 3
@echo LTE 네트워크에 접속 중입니다. 잠시만 기다려 주십시오.

ping -n 1 %ipaddress% |find "TTL=" || goto :loop
echo Answer received.

start /max /D "C:\Complete\" /MIN Success.txt
pasue