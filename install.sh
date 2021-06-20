cd dwm
make
doas make install
cd ..

cd dwmblocks
make
doas make install
cd ..

cd dmenu
make
doas make install
cd ..

cd slock
make
doas make install
cd ..

cp .Xresources $HOME/.Xresources
xrdb -merge $HOME/.Xresources

cp .bashrc $HOME/
cp .xinitrc $HOME/

cp wallpaper $HOME/.wallpaper

cp bin/* $HOME/.local/bin
chmod +x $HOME/.local/bin/*

mkdir -p $HOME/.config/alacritty/
cp alacritty.yml $HOME/.config/alacritty/

mkdir -p $HOME/.config/nvim/
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.config/nvim/bundle/Vundle.vim
cp -r nvim/* $HOME/.config/nvim/

mkdir -p $HOME/.config/qtile/
cp -r qtile/* $HOME/.config/qtile/
