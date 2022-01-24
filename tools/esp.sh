if [ -z $1 ]
then
        echo '选择版本号 1是4.3 2是m'
        read idf
        if [ $idf=='1' ]
        then
            . $HOME/esp/esp-idf4.3/export.sh
        elif [ $idf=='m' ] 
        then 
            . $HOME/esp/esp-idf/export.sh
        else
            echo 'error'
        fi

        echo '芯片型号 1是esp32 2是esp32s2 3是esp32c3'
        read esp
        if [ $idf=='1' ]
        then
            idf.py set-target esp32
        elif [ $idf=='2' ] 
        then 
            idf.py set-target esp32s2
        elif [ $idf=='3' ] 
        then
            idf.py set-target esp32c3
        else
            echo 'error'
        fi

        echo '是否开启menuconfig'
        read esp
        if [ -z $esp ]
        then
            . $HOME/esp/esp-idf4.3/export.sh
        else
            echo 'error'
        fi

        echo '是否开启menuconfig'
        read esp
        if [ -z $esp ]
        then
            idf.py menuconfig
        else
            echo 'error'
        fi

        echo '是否开启build'
        read esp
        if [ -z $esp ]
        then
            idf.py build
        else
            echo 'error'
        fi

        echo '是否开启flash'
        read esp
        if [ -z $esp ]
        then
            idf.py flash
        else
            echo 'error'
        fi

        echo '是否开启monitor'
        read esp
        if [ -z $esp ]
        then
            idf.py monitor 
        else
            echo 'error'
        fi

elif [ $1=='bfm' ] 
then
    idf.py build flash monitor
elif [ $1 == 'b' ] 
then
    echo 'build\n'
    idf.py build  
elif [ $1 == 'f' ] 
then
    echo 'flash\n'
    idf.py flash 
elif [ $1 == 'm' ] 
then
    echo 'monitor\n'
    idf.py  monitor
else
    echo 'error'
fi

# idf
# idf.py set-target esp32
# idf.py menuconfig
# idf.py build
# idf.py -p /dev/ttyUSB0 flash
# idf.py -p /dev/ttyUSB0 monitor 
# alias idfm='. $HOME/esp/esp-idf/export.sh'
# alias idf='. $HOME/esp/esp-idf4.3/export.sh'