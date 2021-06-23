# AlexandercheOTUS_infra
AlexandercheOTUS Infra repository
-------------------------------------------------------------------------------------------------------------------------------------------------------------
cloud_bastion
Домашнее задание №3 "Знакомство с облачной инфраструктурой и облачными сервисами" от 15 июня, вторник в 20:00
Дополнительное задание: подключиться к виртуалке someinternalhost через виртуалку bastion с локальной тачки:
avc@ARM01-R90XLA6N:~/_github/AlexandercheOTUS_infra$ echo "alias someinternalhost='ssh -i /home/avc/_github/ssh_key/yandex_cloud/appuser -A appuser@178.154.203.95 -t "ssh 10.128.0.3"'" >> ~/.bashrc && source ~/.bashrc
avc@ARM01-R90XLA6N:~/_github/AlexandercheOTUS_infra$ someinternalhost
Welcome to Ubuntu 16.04.7 LTS (GNU/Linux 4.4.0-142-generic x86_64)
 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage
appuser@someinternalhost:~$ logout
Connection to 10.128.0.3 closed.
Connection to 178.154.228.89 closed.
-------------------------------------------------------------------------------------------------------------------------------------------------------------
bastion_IP = 178.154.228.89 
someinternalhost_IP = 10.128.0.3
-------------------------------------------------------------------------------------------------------------------------------------------------------------
cloud-testapp
Домашнее задание №4 "Основные сервисы Yandex Cloud" от 17 июня, четверг 20:00
testapp_IP = 178.154.206.60
testapp_port = 9292
