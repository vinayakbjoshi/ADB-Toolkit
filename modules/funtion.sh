#!/bin/bash

## CLEANER FUNCTION ##

clean_exit () {

  rm -rf $PWD/.temp/* &> /dev/null
  rm -rf $PWD/1 &> /dev/null
  rm -rf $PWD/2 &> /dev/null
  clear && echo -e "\nCtrl-C caught...Performing Clean Up Thanks for Using.\n" && sleep 1s
  echo -e "Exiting the ADB-Toolkit, Thanks for using."
  echo -e "\nDONE"
  exit

}

trap_ctrlc () {
    clean_exit
}

trap "trap_ctrlc" 2

banner () {

echo -e "

 █████╗ ██████╗ ██████╗               ████████╗ ██████╗  ██████╗ ██╗     ██╗  ██╗██╗████████╗
██╔══██╗██╔══██╗██╔══██╗              ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██║ ██╔╝██║╚══██╔══╝
███████║██║  ██║██████╔╝    █████╗       ██║   ██║   ██║██║   ██║██║     █████╔╝ ██║   ██║
██╔══██║██║  ██║██╔══██╗    ╚════╝       ██║   ██║   ██║██║   ██║██║     ██╔═██╗ ██║   ██║
██║  ██║██████╔╝██████╔╝                 ██║   ╚██████╔╝╚██████╔╝███████╗██║  ██╗██║   ██║
╚═╝  ╚═╝╚═════╝ ╚═════╝                  ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝   ╚═╝

\e[0m"
echo
echo -e "Made with ❤️ ASHWINI SAHU"
}


option_list () {

banner
echo -e "\n\nCHOOSE THE OPTIONS GIVEN BELOW:\n\n"
echo -e "1.   SHOW CONNECTED DEVICES                           24.  PUT A FILE IN DEVICE "
echo -e "2.   RESTART ADB SERVICE "
echo -e "3.   REBOOT SYSTEM"
echo -e "4.   REBOOT TO RECOVERY MODE                          25.  GO TO METASPLOIT SECTION "
echo -e "5.   REBOOT TO FASTBOOT/BOOTLOADER MODE \n"
echo -e "6.   START A INTERACTIVE SHELL                        26.  LAUNCH AN APPLICATION "
echo -e "7.   DUMP SYSTEM INFORMATION (Messy)                  27.  CHECK IS PHONE ROOTED OR NOT "
echo -e "8.   DUMP CPU INFORMATION (Messy)                     28.  HANG THE PHONE "
echo -e "9.   DUMP MEMORY INFORMATION (Messy)                  29.  SEND SMS FROM THE PHONE "
echo -e "10.  GET PHONE DETAILS"
echo -e "11.  CAPTURE BUG REPORT"
echo -e "12.  INSTALL AN PACAKAGE 'apk'"
echo -e "13.  UNINSTALL AN PACKAGE"
echo -e "14.  LIST ALL INSTALLED PACKAGE"
echo -e "15.  SEE LIVE LOG OF DEVICE"
echo -e "16.  ESTABLISH A REMOTE CONNECTION WITH THE DEVICE\n"
echo -e "17.  CAPTURE A SCREENSHOT ANONYMOUSLY"
echo -e "18.  RECORD THE SCREEN ANONYMOUSLY"
echo -e "19.  COPY ALL THE CAMERA PHOTOS"
echo -e "20.  COPY ALL THE DOWNLOADS"
echo -e "21.  COPY ALL WHATSAPP DATA"
echo -e "22.  COPY ALL DEVICE STORAGE ( Takes time )           A.  ABOUT AUTHOUR "
echo -e "23.  COPY A SPECIFIED FILE OR FOLDER                  E.  EXIT or press Ctrl+c\n"
echo -e $revised
read -p $'SELECT ONE OF THE OPTIONS WITH THE RESPECTED NUMBER [0]:[24] : ' options
 
}

## CALLING THE option list function once

revised=""
option_list

## THE LOOP STARTS FROM HERE

while [ 1 ]
do

case $options in

  "1") echo -e; bash modules/opt1;;
  "2") echo -e; bash modules/opt2;;
  "3") echo -e; bash modules/opt3;;
  "4") echo -e; bash modules/opt4;;
  "5") echo -e; bash modules/opt5;;
  "6") echo -e; bash modules/opt6;;
  "7") echo -e; bash modules/opt7;;
  "8") echo -e; bash modules/opt8;;
  "9") echo -e; bash modules/opt9;;
  "10") echo -e; bash modules/opt10;;
  "11") echo -e; bash modules/opt11;;
  "12") echo -e; bash modules/opt12;;
  "13") echo -e; bash modules/opt13;;
  "14") echo -e; bash modules/opt14;;
  "15") echo -e; bash modules/opt15;;
  "16") echo -e; bash modules/opt16;;
  "17") echo -e; bash modules/opt17;;
  "18") echo -e; bash modules/opt18;;
  "19") echo -e; bash modules/opt19;;
  "20") echo -e; bash modules/opt20;;
  "21") echo -e; bash modules/opt21;;
  "22") echo -e; bash modules/opt22;;
  "23") echo -e; bash modules/opt23;;
  "24") echo -e; bash modules/opt24;;
  "25") echo -e; bash modules/function2.sh; break;;
  "26") echo -e; bash modules/opt26;;
  "27") echo -e; bash modules/opt27;;
  "28") echo -e; bash modules/opt28;;
  "29") echo -e; bash modules/opt29;;
  "A") echo -e; bash modules/about;;
  "a") echo -e; bash modules/about;;

  *) clear; revised="\e[1;4;91mENTER THE RIGHT OPTION BRO :-)\n"; option_list;;

esac

done


#### END OF THIS SCRIPT ####
