#!/bin/bash
# 100chapeu
# whatsapp.sh versão zero GPL v3

telefone=$(ls /run/user/$(id --user)/gvfs/)

while [[ $telefone == "" ]]; do

	telefone=$(ls /run/user/$(id --user)/gvfs/)

	echo $telefone
	sleep 2
done

#echo "telefone conectado"
desbloqueado=$(ls /run/user/$(id --user)/gvfs/$telefone)

while [[ $desbloqueado == "" ]]; do

	desbloqueado=$(ls /run/user/$(id --user)/gvfs/$telefone)

	echo $desbloqueado
	sleep 2
done
#echo "telefone desbloqueado"
gvfs-copy /run/user/$(id --user)/gvfs/$telefone/$desbloqueado/WhatsApp/Media/WhatsApp\ Images/Sent/*  .
gvfs-copy /run/user/$(id --user)/gvfs/$telefone/$desbloqueado/WhatsApp/Media/WhatsApp\ Images/*  .

#echo "imagens copiadas"































