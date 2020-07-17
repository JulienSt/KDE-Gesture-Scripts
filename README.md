# KDE-Gesture-Scripts
Small scripts for scrolling through virtual desktop grids. The scipts allow a natural wrap arround in horizontal and vertical movement.

I use these scripts to scroll through my virtual dasktops with a three finger swipe.
The swipe gets captured by [libinput-gestures](https://github.com/bulletmark/libinput-gestures), which then starts the corresponding script with the following command:

    sh <path to file>/moveLeft.sh 3
    
3 in this case corresponds to the number of columns. Both scripts for horizontal movement need one number as input parameter corresponding to the number of columns in the grid of virtual desktops

And for vertical movement the script needs two inputs, like so:

    sh /home/julien/Tools/gestureManager/moveDown.sh 3 3
    
First input is the number of columns second input is the number of rows. Same for moveUp.

An easy way to put the correct script to the correct gesture is the [gestureManager](https://github.com/gabmus/gestureManager). Just put the command to start the script in the text input under the animation that seems the most fitting to you.
