# dotfiles

## Install

### For Amazon Linux

```shell
# Install zsh and git
sudo yum install -y zsh git
# Setting zsh as login shell
sudo vim /etc/shells # and add /bin/zsh to end of file
sudo vim /etc/passwd # edit EC2 default user '/bin/bash' to '/bin/zsh'
# Download config files and install
git clone --recursive https://github.com/anneau/dot-files.git
cd dot-files/
sh install.sh
```
