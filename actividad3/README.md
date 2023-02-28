# Basic Budget Application
A basic budget javascript application using reacjs, express and Oracle Database.

#Problema 

Actualmente existe un bug en la container image de frontend del ejemplo visto en clase. Lo que sucede es que al momento de cargar una URL especifica se obtiene un error 404. 

#Solucion
Agregar una carpeta con la configuracion de nginx en esta configuracion se expone el puerto se le indica el nombre del DNS y las carpetas de react que usara para servir la aplicacion, posteriormente se copio al contenedor de docker del frontend esta carpeta de configuracion y se ejecuto el comando 
`CMD ["nginx", "-g", "daemon off;"]`
Entonces el dockerfile simplemente cambio con estos cambios:
`COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf`
`EXPOSE 80`
`CMD ["nginx", "-g", "daemon off;"]`.