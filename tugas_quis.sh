#!/bin/bash
pilih=
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
                clear
                echo "1 - Menampilkan Tanggal"
                echo "2 - Menampilkan User"
                echo "3 - Menampilkan Hostname"
                echo "9 - Keluar"
                echo -n "Masukan Pilihan : "
                read pilih
                echo ""
                case $pilih in
                    1 )
                        # until [ "$pilih" = "00" ];
                        # do
                        echo -n "date"
                        # done
                        # sleep 5
                        # echo "Tekan 9 Untuk Keluar : "
                        # read pilih
                        # case $pilih in
                        #     9 ) pilih = "00"
                        #     ;;
                        #     * ) echo "Input Tidak Valid!"
                        #     ;;
                        # esac
                    ;;
                    9 ) 
                        clear
                        echo "Selamat Tinggal"
                        sleep 5
                        clear
                    ;;
                    * ) echo "Pilihlah Angka"
                    ;;
                esac
            done
        ;;
        0 ) echo "Selamat Tinggal"
        ;;
        * ) echo "Pilihlah Angka"
        ;;
    esac
done