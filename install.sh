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

cp .Xresources $HOME/
xrdb -merge $HOME/.Xresources

cd pywal
pip3 install --user .
cd ..

wal -i wallpaper.jpg --saturate 0.85

cp .bashrc $HOME/
