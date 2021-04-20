cd dwm
make
sudo make install
cd ..

cd dwmblocks
make
sudo make install
cd ..

cd st
make
sudo make install
cd ..

cd dmenu
make
sudo make install
cd ..

cd slock
make
sudo make install
cd ..

cp .Xresources $HOME/.Xresources
xrdb -merge $HOME/.Xresources

cp .bashrc $HOME/
cp .xinitrc $HOME/

cp wallpaper $HOME/wallpaper
