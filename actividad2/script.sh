#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset



# OBTENER USUARIO DE GIT
echo 'Introduzca su nombre de usuario en GitHUb:'
read GITHUB_USER

# CONSUMIR API DE GITHUB
url="https://api.github.com/users/"$GITHUB_USER
echo $url
CUR_Lags="-f -s -S -k"
Json_GitHub=$(curl $CUR_Lags $url)

# SEPARARA ID
user_id=$(echo $Json_GitHub | jq ".id")

# SEPARAR USER
git_user=$(echo $Json_GitHub | jq ".login")

# SEPARAR LA FECHA DE CREACION DEL USUARIO
created_at=$(echo $Json_GitHub | jq ".created_at")
# echo $?

# OBTENER FECHA DEL SISTEMA PARA LA CARPETA
fecha=$(date +%F)
# echo $?

# CREAR EL DIRECTORIO
mkdir /tmp/"$fecha"
  

# CONSTRUIR MENSAJE Y GUARDAR EN VARIABLE, LUEGO VOLCAR EN EL ARCHIVO
echo "Hola $git_user. User ID: $user_id. Cuenta Creada El: $created_at" >> /tmp/"$fecha"/saludos.log

# IMPRIMIR MENSAJE DE NUEVO PARA VERIFIFCAR
cat /tmp/"$fecha"/saludos.log


