#!/bin/bash
pilih=
angka=
nama= 
until [ "$pilih" = "0" ];
do
    echo ""
    echo "MAIN MENU"
    echo "1 - Linux Command"
    echo "2 - Struktur kendali"
    echo "3 - Looping"
    echo "0 - Keluar"
    echo -n "Masukan Pilihan : "
    read pilih
    echo ""
    case $pilih in
        1 )
            until [ "$pilih" = "9" ];
            do
                echo "1 - Menampilkan Tanggal"
                echo "2 - Menampilkan User"
                echo "3 - Menampilkan Hostname"
                echo "9 - Keluar"
                echo -n "Masukan Pilihan : "
                read pilih
                echo ""
                case $pilih in
                    1 )
                        clear
                        echo "Tanggal Sekarang : "; date
                        echo " "
                    ;;
                    2 )
                        clear
                        echo "User Saat Ini : $USER ";
                        echo " "
                    ;;
                    3 )
                        clear
                        echo "Host Name Saat Ini : "; hostname
                        echo " "
                    ;;
                    9 ) 
                        clear
                        echo "Selamat Tinggal"
                        echo "Tunggu 5 Detik..."
                        sleep 5
                        clear
                    ;;
                    * ) echo "Pilihlah Angka"
                    ;;
                esac
            done
        ;;
        2 )
            # clear
            until [ "$pilih" = "00" ];
            do
                echo "Pilihlah angka (0-2) : "
                read angka
                if [ "$angka" = "0" ]; then 
                    echo "Pilihan yang bagus"
                elif [ "$angka" = "1" ]; then 
                    echo "Wah, kau memilih angka yang cukup besar"
                elif [ "$angka" = "2" ]; then
                    echo "Kau memilih angka yang paling besar"
                else
                    echo "Pilih lah angka (0-2)"
                fi
                echo ""
                echo "Tekan 9 untuk keluar : "
                read pilih
                case $pilih in
                    9 ) 
                        clear
                        pilih="00";;
                    * ) echo "Input tidak valid";;
            esac
            done
        ;;
        3 )
            until [ "$pilih" = "00" ];
            do
                echo "Masukan nama : "
                read nama
                echo "Masukan jumlalh perulangan"
                read angka
                for (( i=1; i<="$angka"; i++ ))
                do
                    echo "Halo, $nama"
                done
                echo ""
                echo "Tekan 9 untuk keluar : "
                read pilih
                case $pilih in
                    9 ) 
                        clear
                        pilih="00";;
                    * ) echo "Input tidak valid";;
                esac
            done
        ;;
        0 ) echo "Selamat Tinggal"
        ;;
        * ) echo "Pilihlah Angka"
        ;;
    esac
done
