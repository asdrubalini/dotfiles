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

cd pywal
pip3 install --user .
cd ..

wal -i wallpaper --saturate 0.85

cp .Xresources .Xresources.wal
cat $HOME/.cache/wal/colors.Xresources >> .Xresources.wal

cp .Xresources.wal $HOME/.Xresources
xrdb -merge $HOME/.Xresources

cp .bashrc $HOME/
cp .xinitrc $HOME/

cp wallpaper $HOME/wallpaper
