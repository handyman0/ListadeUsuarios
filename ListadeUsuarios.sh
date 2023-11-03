#!/bin/bash

#################################################################
#                                                               #
# Nome: Luiz Fernando                                           #
# Data: 03/11/2023                                              #
#                                                               #
# Descrição: Listar todos usuarios (humanos) do sistema         #
#      	e exibindo as principais informações da conta.          #
#                                                               #
# Uso: ./ListadeUsuarios.sh                                     #
#                                                               #
#################################################################

# UIDs utilizados para usuarios comuns
MIN_UID=$(grep "^UID_MIN" /etc/login.defs|tr -s "\t"|cut -f2)
MAX_UID=$(grep "^UID_MAX" /etc/login.defs|tr -s "\t"|cut -f2)

OLDIFS=$IFS
IFS=$'\n'

#Criando o cabeçalho da saida
echo -e "USUARIO\t\tUID\t\tDIR HOME\t\tNOME OU DESCRIÇÃO"

for i in $(cat /etc/passwd)
do
	USERID=$(echo $i | cut -d":" -f3)
	if [ $USERID -ge $MIN_UID -a $USERID -le $MAX_UID ]
	then
		USER=$(echo $i | cut -d":" -f1)
		USERDESC=$(echo $i | cut -d":" -f5 | tr -d ',')
		USERHOME=$(echo $i | cut -d":" -f6)
		echo -e "$USER\t\t$USERID\t\t$USERHOME\t\t$USERDESC"
	fi
done
IFS=$OLDIFS
