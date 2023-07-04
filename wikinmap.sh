#!/bin/bash
#
#                   ___.-------.___
#               _.-` ___.--;--.___ `-._
#            .-` _.-`  /  .+.  \  `-._ `-.
#          .` .-`      |-|-o-|-|      `-. `.
#         (_ <O__      \  `+`  /      __O> _)
#            `--._``-..__`._|_.`__..-``_.--`
#                 ``--._________.--``
#
#		 WikiNmap- 4/jul/2023
# 	            Autor: @Ux4hack
#		      Version 1.0
#			SOCIAL:
#	 Instagram: @erasmogalvez_404
#	 Telegram: @Ux4hack
#	 Facebook: Erasmo Galvez
#
#
# Function ctr_c
trap ctrl_c 2
function ctrl_c() {
echo;echo
echo -e " ${R}[!]${Y} Finalizando programa..."
sleep 1
exit
}
# Colors
COLOR_NC='\033[0m'
Y='\033[1;33m'
B="\e[0;34m\033[1m"
V="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
R="\e[0;31m\033[1m"
B="\e[0;34m\033[1m"
Y="\e[0;33m\033[1m"
W="\033[0m"
G='\033[90m'
# Show banner
show_banner() {
clear
    echo -e '''\033[1;33m
╭─────────────────────────────────────────────────────────────╮
│ __      __.__ __   .__   \033[0;34m        ___.-------.___ \033[1;33m           │
│/  \    /  \__|  | _|__|  \033[0;34m   _.-` ___.--;--.___ `-._ \033[1;33m        │
│\   \/\/   /  |  |/ /  |  \033[0;34m  .-` _.-`  /  .+.  \  `-._ `-. \033[1;33m   │
│ \        /|  |    <|  |  \033[0;34m.` .-`      |-|-o-|-|      `-. `. \033[1;33m │
│  \__/\  / |__|__|_ \__| \033[0;34m(_ <O__      \  `+`  /      __O> _) \033[1;33m│
│       \/          \/     \033[0;34m `--._``-..__`._|_.`__..-``_.--` \033[1;33m \e[0;31m\033[1mU\033[1;33m│
│   _______                \033[0;34m       ``--._________.--`` \033[1;33m    \e[0;31m\033[1m   x\033[1;33m│
│   \      \   _____   ____________   \e[0;31m\033[1m                       4\033[1;33m│
│   /   |   \ /     \ / ____/\____ \  \e[0;31m\033[1m	                     h\033[1;33m│
│  /    |    \  Y Y  < <_|  ||  |_> > \e[0;31m\033[1m	             	     a\033[1;33m│
│  \____|__  /__|_|  /\__   ||   __/  \e[0;31m\033[1m		             c\033[1;33m│
│          \/      \/    |__||__|     \e[0;31m\033[1m		 	     k\033[1;33m│
╰────────────────────── \e[0;32m\033[1mTécnicas con Nmap\033[1;33m ────────────────────╯
'''
echo -e " ${G}INFORMACIÓN"
echo -e "${G} ------------"
echo -e "${V} >${W}-${B}=${Y} Descripción:${G} Aprende el uso del poderoso Nmap"
echo -e "${V} >${W}-${B}=${Y} Finalidad:${G} Ayudar a pentesters y usuarios nuevos"
echo -e "${V} >${W}-${B}=${Y} Contactáme:${G} @Ux4hack"
echo
}

# Show definition and example
show_definition_example() {

	show_banner
    echo -e "${V}-----------${R} Técnica:${V} $1 -----------"
    echo ""
    echo -e "${V}> ${B}Definición: ${COLOR_NC}$2"
    echo ""
    echo -e "${V}> ${B}Ejemplo: ${COLOR_NC}$3"
    echo ""
    read -p "Presiona enter para regresar..."
    show_menu
}

# Show Menu
show_menu() {
    show_banner
echo -e " ${G}OPCIÓN"
echo -e "${G} ----------"
#    echo ""
    sleep 0.5
    echo -e "  ${B}[${G}01${B}]${W} Escaneo de puertos TCP"
    sleep 0.1
    echo -e "  ${B}[${G}02${B}]${W} Escaneo de puertos UDP"
    sleep 0.1
    echo -e "  ${B}[${G}03${B}]${W} Escaneo de servicios HTTP"
    sleep 0.1
    echo -e "  ${B}[${G}04${B}]${W} Escaneo de servicios HTTPS"
    sleep 0.1
    echo -e "  ${B}[${G}05${B}]${W} Escaneo de servicios FTP"
    sleep 0.1
    echo -e "  ${B}[${G}06${B}]${W} Escaneo de servicios SSH"
    sleep 0.1
    echo -e "  ${B}[${G}07${B}]${W} Escaneo de servicios Telnet"
    sleep 0.1
    echo -e "  ${B}[${G}08${B}]${W} Escaneo de servicios DNS"
    sleep 0.1
    echo -e "  ${B}[${G}09${B}]${W} Escaneo de servicios SNMP"
    sleep 0.1
    echo -e "  ${B}[${G}10${B}]${W} Escaneo de servicios SMB"
    sleep 0.1
    echo -e "  ${B}[${G}11${B}]${W} Escaneo de servicios RDP"
    sleep 0.1
    echo -e "  ${B}[${G}12${B}]${W} Escaneo de servicios MySQL"
    sleep 0.1
    echo -e "  ${B}[${G}13${B}]${W} Escaneo de servicios PostgreSQL"
    sleep 0.1
    echo -e "  ${B}[${G}14${B}]${W} Escaneo de servicios MSSQL"
    sleep 0.1
    echo -e "  ${B}[${G}15${B}]${W} Escaneo de servicios Oracle"
    sleep 0.1
    echo -e "  ${B}[${G}16${B}]${W} Escaneo de servicios MongoDB"
    sleep 0.1
    echo -e "  ${B}[${G}17${B}]${W} Escaneo de servicios Redis"
    sleep 0.1
    echo -e "  ${B}[${G}18${B}]${W} Escaneo de servicios FTPS"
    sleep 0.1
    echo -e "  ${B}[${G}19${B}]${W} Escaneo de servicios SFTP"
    sleep 0.1
    echo -e "  ${B}[${G}20${B}]${W} Escaneo de servicios SMTP"
    sleep 0.1
    echo -e "  ${B}[${G}21${B}]${W} Escaneo de servicios POP3"
    sleep 0.1
    echo -e "  ${B}[${G}22${B}]${W} Escaneo de servicios IMAP"
    sleep 0.1
    echo -e "  ${B}[${G}23${B}]${W} Escaneo de servicios LDAP"
    sleep 0.1
    echo -e "  ${B}[${G}24${B}]${W} Escaneo de servicios NTP"
    sleep 0.1
    echo -e "  ${B}[${G}25${B}]${W} Escaneo de servicios VNC"
    sleep 0.1
    echo -e "  ${B}[${G}26${B}]${W} Escaneo de servicios RPC"
    sleep 0.1
    echo -e "  ${B}[${G}27${B}]${W} Escaneo de servicios NFS"
    sleep 0.1
    echo -e "  ${B}[${G}28${B}]${W} Escaneo de servicios Redis"
    sleep 0.1
    echo -e "  ${B}[${G}29${B}]${W} Escaneo de servicios FTPS"
    sleep 0.1
    echo -e "  ${B}[${G}30${B}]${W} Escaneo de servicios SFTP"
    sleep 0.1
    echo
    echo -e "  ${B}[${G}0${B}]${R} Salir"
    echo ""
    echo -ne "  ${R} W${W} i${R} k${W} i${R} N${W} m${R} a${W} p ${B}> ${Y}"
	read option

    case $option in
        1)
            technique="Escaneo de puertos TCP"
            definition="Permite identificar y evaluar los puertos TCP abiertos en una red."
            example="Ejemplo: nmap -p 1-1000 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        2)
            technique="Escaneo de puertos UDP"
            definition="Permite identificar y evaluar los puertos UDP abiertos en una red."
            example="Ejemplo: nmap -sU -p 1-1000 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        3)
            technique="Escaneo de servicios HTTP"
            definition="Permite identificar y evaluar los servicios HTTP activos en una red."
            example="Ejemplo: nmap -p 80 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        4)
            technique="Escaneo de servicios HTTPS"
            definition="Permite identificar y evaluar los servicios HTTPS activos en una red."
            example="Ejemplo: nmap -p 443 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        5)
            technique="Escaneo de servicios FTP"
            definition="Permite identificar y evaluar los servicios FTP activos en una red."
            example="Ejemplo: nmap -p 21 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        6)
            technique="Escaneo de servicios SSH"
            definition="Permite identificar y evaluar los servicios SSH activos en una red."
            example="Ejemplo: nmap -p 22 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        7)
            technique="Escaneo de servicios Telnet"
            definition="Permite identificar y evaluar los servicios Telnet activos en una red."
            example="Ejemplo: nmap -p 23 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        8)
            technique="Escaneo de servicios DNS"
            definition="Permite identificar y evaluar los servicios DNS activos en una red."
            example="Ejemplo: nmap -p 53 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        9)
            technique="Escaneo de servicios SNMP"
            definition="Permite identificar y evaluar los servicios SNMP activos en una red."
            example="Ejemplo: nmap -p 161 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        10)
            technique="Escaneo de servicios SMB"
            definition="Permite identificar y evaluar los servicios SMB activos en una red."
            example="Ejemplo: nmap -p 445 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        11)
            technique="Escaneo de servicios RDP"
            definition="Permite identificar y evaluar los servicios RDP activos en una red."
            example="Ejemplo: nmap -p 3389 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        12)
            technique="Escaneo de servicios MySQL"
            definition="Permite identificar y evaluar los servicios MySQL activos en una red."
            example="Ejemplo: nmap -p 3306 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        13)
            technique="Escaneo de servicios PostgreSQL"
            definition="Permite identificar y evaluar los servicios PostgreSQL activos en una red."
            example="Ejemplo: nmap -p 5432 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        14)
            technique="Escaneo de servicios MSSQL"
            definition="Permite identificar y evaluar los servicios MSSQL activos en una red."
            example="Ejemplo: nmap -p 1433 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        15)
            technique="Escaneo de servicios Oracle"
            definition="Permite identificar y evaluar los servicios Oracle activos en una red."
            example="Ejemplo: nmap -p 1521 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        16)
            technique="Escaneo de servicios MongoDB"
            definition="Permite identificar y evaluar los servicios MongoDB activos en una red."
            example="Ejemplo: nmap -p 27017 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        17)
            technique="Escaneo de servicios Redis"
            definition="Permite identificar y evaluar los servicios Redis activos en una red."
            example="Ejemplo: nmap -p 6379 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        18)
            technique="Escaneo de servicios FTPS"
            definition="Permite identificar y evaluar los servicios FTPS activos en una red."
            example="Ejemplo: nmap -p 990 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        19)
            technique="Escaneo de servicios SFTP"
            definition="Permite identificar y evaluar los servicios SFTP activos en una red."
            example="Ejemplo: nmap -p 22 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        20)
            technique="Escaneo de servicios SMTP"
            definition="Permite identificar y evaluar los servicios SMTP activos en una red."
            example="Ejemplo: nmap -p 25 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        21)
            technique="Escaneo de servicios POP3"
            definition="Permite identificar y evaluar los servicios POP3 activos en una red."
            example="Ejemplo: nmap -p 110 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        22)
            technique="Escaneo de servicios IMAP"
            definition="Permite identificar y evaluar los servicios IMAP activos en una red."
            example="Ejemplo: nmap -p 143 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        23)
            technique="Escaneo de servicios LDAP"
            definition="Permite identificar y evaluar los servicios LDAP activos en una red."
            example="Ejemplo: nmap -p 389 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        24)
            technique="Escaneo de servicios NTP"
            definition="Permite identificar y evaluar los servicios NTP activos en una red."
            example="Ejemplo: nmap -p 123 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        25)
            technique="Escaneo de servicios VNC"
            definition="Permite identificar y evaluar los servicios VNC activos en una red."
            example="Ejemplo: nmap -p 5900 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        26)
            technique="Escaneo de servicios RPC"
            definition="Permite identificar y evaluar los servicios RPC activos en una red."
            example="Ejemplo: nmap -p 135 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        27)
            technique="Escaneo de servicios NFS"
            definition="Permite identificar y evaluar los servicios NFS activos en una red."
            example="Ejemplo: nmap -p 2049 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        28)
            technique="Escaneo de servicios Redis"
            definition="Permite identificar y evaluar los servicios Redis activos en una red."
            example="Ejemplo: nmap -p 6379 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        29)
            technique="Escaneo de servicios FTPS"
            definition="Permite identificar y evaluar los servicios FTPS activos en una red."
            example="Ejemplo: nmap -p 990 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        30)
            technique="Escaneo de servicios SFTP"
            definition="Permite identificar y evaluar los servicios SFTP activos en una red."
            example="Ejemplo: nmap -p 22 192.168.0.0/24"
            show_definition_example "$technique" "$definition" "$example"
            ;;
        0)
            echo "Saliendo del programa..."
            sleep 1
            exit 0
            ;;
        *)
            echo;echo -e "${R}  [!] ${Y}La opción ${B}${option}${Y} no existe"
            sleep 2
            show_menu
            ;;
    esac
}

# Declaring functions
show_menu

# I'm Ux4hack
