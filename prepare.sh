###################################################################################
#
# automatically config vim
# Author: Mingxing LAI
# Date: 2013年 11月 21日 星期四 15:00:35 CST
#
###################################################################################

# 0. prepare
sudo apt-get update

# 1. check git
for item in "git" "tmux" "ack-grep" "ipython" "python-pip" "mpstat" "htop" "dstat" "exuberant-ctags" "tree" "pstree" "python3"
do
    echo "ready to install ${item} ...."
    sudo apt-get install ${item} --yes
done

# 2. make some directory
if [ -d ~/.vim ]
then
    rm -rf ~/.vim
fi
mkdir -p ~/.vim/tmp/undo
mkdir -p ~/.vim/tmp/backup
mkdir -p ~/.vim/tmp/swap
mkdir -p ~/.ptpython

# 3. clone vundle
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# 4. get vimrc
echo "ready to get vimrc"
wget https://raw.github.com/lalor/config/master/vimrc -q -O ~/.vimrc

# 5. get .gitconfig
echo "ready to get .gitconfig"
wget https://raw.github.com/lalor/config/master/gitconfig -q -O ~/.gitconfig
wget https://raw.github.com/lalor/config/master/config.py -q -O ~/.ptpython/config.py

# 6. update vim
sudo aptitude install vim-gnome vim vim-common vim-tiny

# 7. pip install
for item in "pstuil" "glances" "tox" "jedi" "virtualenv" "ptpython"
do
    echo "ready to install ${item}"
    sudo apt-get install ${item} --yes
done

# 8. vim:BundleInstall
echo "Successfully"
echo "please run :BundleInstall in vim"
