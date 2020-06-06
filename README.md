# Ubuntu 套件安裝

使用最新版的 Ubuntu 20.04 測試安裝，執行完畢後重新開機一次，複製以下指令即可執行

```bash
curl https://raw.githubusercontent.com/raydigitallife/ubuntu/master/install.sh | bash

# 安裝後，可在手動調整時區及語系
sudo dpkg-reconfigure tzdata
sudo dpkg-reconfigure locales

```
