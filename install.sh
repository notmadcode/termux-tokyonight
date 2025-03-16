#!/data/data/com.termux/files/usr/bin/bash

TCONF=~/.termux
PS3='Pilih Skema Warna: '
DAFTAR_SKEMA=("tokyonight night" "tokyonight storm" "tokyonight moon" "tokyonight day")

if [ ! -d "$TCONF" ]; then
    mkdir "$TCONF"
fi

select PILIHAN in "${DAFTAR_SKEMA[@]}"; do
    case $PILIHAN in
    "tokyonight night")
        cp tokyonight_night.properties ~/.termux/colors.properties
        termux-reload-settings
        exit
        ;;
    "tokyonight storm")
        cp tokyonight_storm.properties ~/.termux/colors.properties
        termux-reload-settings
        exit
        ;;
    "tokyonight moon")
        cp tokyonight_moon.properties ~/.termux/colors.properties
        termux-reload-settings
        exit
        ;;
    "tokyonight day")
        cp tokyonight_day.properties ~/.termux/colors.properties
        termux-reload-settings
        exit
        ;;
    *) echo "pilian tidak tersedia $REPLY" ;;
    esac
done
