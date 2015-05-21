###################################################################################
#
# automatically config vim
# Author: Mingxing LAI
# Date: 2013年 11月 21日 星期四 15:00:35 CST
#
###################################################################################

# 1. check git
if git --help &> /dev/null
then
    echo "git is ok..."
else
    echo "ready to install git..."
    sudo apt-get install git --yes
    sudo apt-get install tmux --yes
fi

# 2. make some directory
if [ -d ~/.vim ]
then
    rm -rf ~/.vim
fi
mkdir -p ~/.vim/budle/vundle
mkdir -p ~/.vim/tmp/undo
mkdir -p ~/.vim/tmp/backup
mkdir -p ~/.vim/tmp/swap

# 3. clone vundle
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# 4. install ctags
if ctags --help &> /dev/null
then
    echo "ctags is ok..."
else
    echo "Ready to install ctags"
    sudo apt-get install exuberant-ctags
fi

# 5. get vimrc
echo "ready to get vimrc"
wget https://raw.github.com/lalor/config/master/vimrc -q -O ~/.vimrc

# 6. get .gitconfig
echo "ready to get .gitconfig"
wget https://raw.github.com/lalor/config/master/gitconfig -q -O ~/.gitconfig

# 6. vim:BundleInstall
echo "Successfully"
echo "please run :BundleInstall in vim"
