#!/bin/bash

UNAME="$1"
UIDNUM=`id -u $UNAME`
VNCPORT=$(( `id -u $UNAME` % 1000 ))

#echo $UNAME
#echo $UIDNUM
#echo $VNCPORT

VNC_RUNNING=`ps aux | grep Xvnc |grep $UNAME | grep -v grep | wc -l`
if [ $VNC_RUNNING -gt 0 ];then
    echo "$UNAME vnc is running !!! "
    exit -1
fi

echo "UserVncInfo [ username:$UNAME , vncport:$VNCPORT ]"

CMD="vncserver :$VNCPORT -name vnc_$UNAME -geometry 1440x900 -SendCutText=0 -AcceptCutText=1 -MaxCutText=50 -noclipboard -depth 24 -nolisten tcp"
echo "start_${UNAME}_vnc : [ $CMD ]"

su $UNAME -c "echo"
XSTARTUP="mkdir ~/.vnc/ 1>/dev/null 2&>1; /usr/bin/cp /xstartup /home/$UNAME/.vnc/"
su -f -s /bin/sh - $UNAME -c "${XSTARTUP}"

su -f -s /bin/sh  - $UNAME -c "${CMD}"
