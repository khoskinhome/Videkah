#!/usr/bin/perl
use warnings;
use strict;
use 5.14.2;
use Data::Dumper;

use Cwd;

# This script will NOT delete data.
# It will delete and update symbolic links.

##print "$0\n";

if ( $0 ne './install.me.pl' ) {
    die "this can only run from the directory where install.me.pl is in. you have to run it './install.me.pl'\n";
}

my $dirhere = getcwd;

print "we're in :- $dirhere\n";


# If $ENV{HOME}/.vim doesn't exist then create it :-
if ( ! -d "$ENV{HOME}/.vim" ) {
    system( "mkdir $ENV{HOME}/.vim");
} else {
   print "$ENV{HOME}/.vim already exists\n";
}

# update/create the symlink in to the videkah repo in $ENV{HOME}/.vim/ :-
my $symlink2videkah = "$ENV{HOME}/.vim/videkah";

if ( -l $symlink2videkah ) {
    print "$symlink2videkah already exists and is a symlink. So deleting the old symlink\n";
    unlink $symlink2videkah;
}
if ( -e $symlink2videkah ) {
    die "$symlink2videkah still exists, and isn't a symlink, so we can't delete it to create the new link. We can't go any further.\n";
} else {
    chdir ("$ENV{HOME}/.vim/") || die "can't chdir to $ENV{HOME}/.vim/\n";
    my $symln2 = $dirhere."/videkah";
    if ( ! -d $symln2) {
        die "$symln2 isn't a directory, can't symlink to it in $ENV{HOME}/.vim/\n";
    }

    system ("ln -s $symln2  videkah") && die "Couldn't 'ln -s $symln2 videkah'\n" ;
    print "DID ln -s $symln2  videkah\n";
}


# Now update the $ENV{HOME}/.vimrc symlink
my $vimrc_symlink = "$ENV{HOME}/.vimrc";
if ( -l $vimrc_symlink ) {
    print "$vimrc_symlink already exists and is a symlink. So deleting the old symlink\n";
    unlink $vimrc_symlink;
}
if ( -e  $vimrc_symlink ) {
    die "$vimrc_symlink still exists, and isn't a symlink, so we can't delete it to create the new link. We can't go any further.\n";
} else {
    chdir ("$ENV{HOME}") || die "can't chdir $ENV{HOME}\n";
    my $symln2 = "$ENV{HOME}/.vim/videkah/vimrc_in_home";
    system ("ln -s $symln2 $vimrc_symlink") && die "Couldn't 'ln -s $symln2 $vimrc_symlink'\n" ;
    print "DID ln -s $symln2 $vimrc_symlink\n";
}


print  "Add :- \n".' export $PATH="$PATH:$HOME/.vim/videkah/bin"'."\nto your .bashrc\n";
