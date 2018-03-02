#!/bin/bashvm.swappiness=1


soft1=$(cat /etc/sysctl.conf | grep vm.max_map_count=262144)
soft2=$(cat /etc/sysctl.conf | grep fs.file-max=262144)
soft3=$(cat /etc/sysctl.conf | grep vm.swappiness=1)
soft4=$(cat /etc/sysctl.conf | grep 1)


if ! [ -n "$soft1" ]
	then
                  if ! echo "vm.max_map_count=262144" >> /etc/sysctl.conf
			then
    				echo "Não foi possível instalar o pacote mysql"
    				exit 1
				
		        fi
else echo "ja alterado"
fi

if ! [ -n "$soft2" ]
        then    
                  if ! echo "fs.file-max=262144" >> /etc/sysctl.conf
                        then
                                echo "Não foi possível instalar o pacote mysql"
                                exit 1
                                
                        fi
else echo "ja alterado"
fi

if ! [ -n "$soft3" ]
        then    
                  if ! echo  "vm.swappiness=1" >> /etc/sysctl.conf
                        then
                                echo "Não foi possível instalar o pacote mysql"
                                exit 1
                                
                        fi
else echo "ja alterado"
fi

if ! [ -n "$soft4" ]
        then    
                  if ! echo 1 > /proc/sys/vm/swappiness
                        then
                                echo "Não foi possível instalar o pacote mysql"
                                exit 1
                                
                        fi
else echo "ja alterado"
fi

