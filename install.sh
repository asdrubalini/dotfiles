cp .Xresources $HOME/.Xresources
xrdb -merge $HOME/.Xresources

cp .bashrc $HOME/
cp .xinitrc $HOME/

cp wallpaper $HOME/.wallpaper

mkdir -p $HOME/.config/alacritty/
cp alacritty/* $HOME/.config/alacritty/

mkdir -p $HOME/.config/picom/
cp picom/* $HOME/.config/picom/

mkdir -p $HOME/.config/nvim/
[ ! -d $HOME/.config/nvim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.config/nvim/bundle/Vundle.vim
cp -r nvim/* $HOME/.config/nvim/

