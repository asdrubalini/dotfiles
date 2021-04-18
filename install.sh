cd dwm
make clean
make
sudo make install
make clean
cd ..

cd dwmblocks
make clean
make
sudo make install
make clean
cd ..

cd st
make clean
make
sudo make install
make clean
cd ..

cd dmenu
make clean
make
sudo make install
make clean
cd ..

cd slock
make clean
make
sudo make install
make clean
cd ..

cd pywal
pip3 install --user .
cd ..

wal -i wallpaper.jpg --saturate 0.85

cp .Xresources .Xresources.wal
cat $HOME/.cache/wal/colors.Xresources >> .Xresources.wal

cp .Xresources.wal $HOME/
xrdb -merge $HOME/.Xresources

cp .bashrc $HOME/
cp .xinitrc $HOME/


