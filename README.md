# dev_setup
This repo standardizes dev tools across multiple operating systems.

## supported operating systems
Windows 10/11, MacOS, Ubantu/Debian Linux

## what is included:

### system level tools
- git
- python
- node
- docker
- docker-desktop
- cmake
- ffmpeg
- vs code
- gh

## how to install on a new machine:

### Windows 10/11
```
winget install Git.Git
git clone https://github.com/byeSystem32/dev-setup
cd dev-setup
powershell -ExecutionPolicy Bypass -File windows.ps1
```

### MacOS
```
brew install git
git clone https://github.com/byeSystem32/dev-setup
cd dev-setup
chmod +x mac.sh
./mac.sh
```

### Ubantu/Debian Linux
```
sudo apt install -y git
git clone https://github.com/byeSystem32/dev-setup
cd dev-setup
chmod +x linux.sh
./linux.sh
```
