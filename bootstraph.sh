############ Variables

dir = ~/dotfiles
olddir=~/dotfiles_old
files=".vimrc .bashrc .vim .zshrc"

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# Change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# Copy 
