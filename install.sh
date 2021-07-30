cp .Xresources $HOME/.Xresources
xrdb -merge $HOME/.Xresources

cp .bashrc $HOME/
cp .xinitrc $HOME/
cp .bash_profile $HOME/

cp wallpaper $HOME/.wallpaper

mkdir -p $HOME/.config/alacritty/
cp alacritty/* $HOME/.config/alacritty/

mkdir -p $HOME/.config/picom/
cp picom/* $HOME/.config/picom/

mkdir -p $HOME/.config/fish/
cp fish/* $HOME/.config/fish/

cp .tmux.conf $HOME/

mkdir -p $HOME/.config/nvim/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cp -r nvim/* $HOME/.config/nvim/

cp bin/* $HOME/.local/bin
