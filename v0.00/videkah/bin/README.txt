#######
videkah
#######
By Karl 'khaos' Hoskin. Jan -> March 2014.
#########################################
An IDE for Vim , for perl users.
#########################################
Would have been called Vide, but that name seems to have already been (unsurprisingly) taken, so it got name vide and kah after ME!


What does it do ?
#################

It allows hopefully quick navigation around a complex code base of lots of perl modules, in a various few different ways.


It has the following 'videkah' buffers from where you can do different things:-

filelist
    where filenames can be stored, and quickly navigated to

runlist
    where single line commands can be invoked on the shell

perl_stacktrace
    where a perl stack trace can be pasted , and navigated around

perl_static_class_hierarchy
    where a file has its static class (i.e. what is sorta available at compile time) viewable, and navigatable.

perl_ackgrep
    where an ackgrep command has been run on a list of paths, and the results of which can be quickly navigated to.

config
    where various bits can be configured. like the storage location of all the above files, and whether they are saved by the git-branch-name.

    by-git-branch-name
    ##################
    All of the above files can be stored on a general name that would work in all git branches,
    or a by git branch name. i.e. When you're in a checkout of <my-git-branch> all of the above files
    will be stored by the my-git-branch filename.

    This of course relies on you working in a git repository. If you're not working in a git-repo you can't do this.

    PERL_LIBPATHS
    #############


    PERL_ACKGREP_PATHS
    ##################





Toggling between the various special videkah buffers


