Cols=$1
CurrentDesktop=`qdbus-qt5 org.kde.KWin /KWin currentDesktop`

if (( $CurrentDesktop % $Cols == 0 ))
then
    ((Next= $CurrentDesktop - $Cols + 1))
    qdbus-qt5 org.kde.KWin /KWin setCurrentDesktop $Next
else
    qdbus-qt5 org.kde.KWin /KWin nextDesktop
fi
