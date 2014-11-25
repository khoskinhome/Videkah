

check this code out to somewhere say $VIDEKAH_CHECKOUT

We'll assume that the Videkah git-repo is in :-
 
$VIDEKAH_CHECKOUT=$HOME/github.com/Videkah


# if ~/.vim doesn't exist , then mkdir ~/.vim

cd ~/.vim


videkah -> /home/khoskin/github.com/Videkah/v0/videkah

ln -s $VIDEKAH_CHECKOUT/v0/videkah videkah

ln -s ~/.vim/videkah/vimrc_in_home ~/.vimrc
