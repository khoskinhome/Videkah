INSTALL
#######

so you've got this checked out somewhere. 

the ./install.me.pl script will *safely* install videkah , if it can.

This script first see if it needs to "mkdir ~/.vim"

Once there is a ~/.vim dir in there it creates a symlink
called "videkah" to the "videkah" dir here.
It will update it if ~/.vim/videkah already exists as a symlink/
If ~/.vim/videkah already exists and its not a symlink, it will not do anything.

the install will then attempt to point the ~/.vimrc to the ~/.vim/videkah/vimrc_in_home.
Again it will only do this if ~/.vimrc didn't exist or was a symlink already. If it is a real
file, the install will not do anything.

So with the above 2 symlinks the install can quickly switch to any version of videkah in
the github.com repo.
