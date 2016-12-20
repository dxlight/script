apt-get install lxde tightvncserver firefox terminator make gcc git tmux -y 
tightvncserver -geometry 1300x700
git clone https://github.com/Mirkic7/mdcct
cd mdcct
make
mkdir /home/plots 
mkdir /home/plots/complete
wget https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA&export=download
