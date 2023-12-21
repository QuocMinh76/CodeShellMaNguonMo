#!/bin/bash

Ten=""
Chon=""

read -p "Nhap ten moi cua may tinh: " Ten
while true
do
        read -p "Ban co chac chan muon doi hay khong? (Y/N): " Chon
        if [ $Chon = "Y" ] || [ $Chon = "y" ]; then
		sudo hostnamectl set-hostname $Ten
		echo "Doi ten may tinh thanh cong!"
                read -p "Ban nen khoi dong may tinh de lenh doi ten co hieu luc (Y/N): " Chon
                if [ $Chon = "Y" ] || [ $Chon = "y" ]; then
			echo "Khoi dong lai may"
			systemctl reboot -i
                        break
                 elif [ $Chon = "N" ] || [ $Chon = "n" ]; then
			echo "Vui long khoi dong lai may sau"
                        break
                else
                        echo "Lua chon khong hop le, vui long chon Y hoac N"
                fi
        elif [ $Chon = "N" ] || [ $Chon = "n" ]; then
                Com=$(hostname)
                echo "Ten may tinh hien tai la: $Com"
                break
        else
                echo "Lua chon khong hop le, vui long chon Y hoac N"
        fi
done

