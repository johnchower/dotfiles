sudo apt-get install vim-gnome -y

# Install R
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt-get install r-base r-base-dev -y
# Install RStudio
sudo apt-get install gdebi-core
wget https://download1.rstudio.org/rstudio-0.99.896-amd64.deb
sudo gdebi -n rstudio-0.99.896-amd64.deb
rm rstudio-0.99.896-amd64.deb

# Install Anaconda (for Python 3.5)
wget https://repo.continuum.io/archive/Anaconda3-4.1.1-Linux-x86_64.sh
bash Anaconda3-4.1.1-Linux-x86_64.sh
rm Anaconda3-4.1.1-Linux-x86_64.sh

# Install VLC
sudo apt-get install vlc -y

# Install git
sudo apt-get install git -y

# Install vim
sudo apt-get install vim-gnome -y
# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Dropbox
echo'deb [arch=i386,amd64] http://linux.dropbox.com/ubuntu wily main' >> /etc/apt/sources.list
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
sudo apt install dropbox python-gpgme

# Install Atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt install atom

# Install Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable -y

# Install f.lux
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install fluxgui -y

# Install Wine
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install wine1.8 winetricks -y

# Vim YouCompleteMe plugin
# https://github.com/Valloric/YouCompleteMe
# Install cmake so that you can compile the ycm_core library for the Vim plugin YouCompleteMe
sudo apt-get install cmake -y
# Install python headers so (also a dependency for YCM)
sudo apt-get install python-dev python3-dev
# Create folder for build files
mkdir ~/ycm_build
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp

# PlayOnLinux

sudo add-apt-repository ppa:noobslab/apps
sudo apt-get update
sudo apt-get install playonlinux -y

# Set default shell to zsh
chsh -s /bin/zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh


# Install tmux
sudo add-apt-repository ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install tmux -y

