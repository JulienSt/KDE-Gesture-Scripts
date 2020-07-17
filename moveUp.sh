Cols=$1
Rows=$2
CurrentDesktop=`qdbus-qt5 org.kde.KWin /KWin currentDesktop`
((DesktopCount= $Cols * $Rows))

if (( $CurrentDesktop <= $Cols ))
then
    ((Next= $DesktopCount - $Cols + $CurrentDesktop))
    qdbus-qt5 org.kde.KWin /KWin setCurrentDesktop $Next
else
    ((Next= ($CurrentDesktop - $Cols) % $DesktopCount))
    qdbus-qt5 org.kde.KWin /KWin setCurrentDesktop $Next
fi
