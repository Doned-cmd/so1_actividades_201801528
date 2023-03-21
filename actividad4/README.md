# Actividad4 - 201801528 - Bryan Eduardo Gonzalo Mendez Queedo

### Contenido del archivo del servicio

```
[Unit]
Description=My Script

[Service]
Type=simple
ExecStart=/media/script/test.sh
Restart=always

[Install]
WantedBy=multi-user.target

```
Donde en ExecStart se pone la ruta del script a ejecutar, el archivo debe tener los permisos para ejecutarse correctamente.

### Proceso de instalacion del servicio


Se creo los siguientes pasos para crear un servicio systemd unit:


1. Guardar el archivo 'testserv.service' en la ruta '/etc/systemd/system/'

2. Recargar la configuración de systemd para que tome en cuenta el nuevo archivo de unidad a traves del comando:
```
systemctl daemon-reload
```

3. Iniciar el servicio con el comando y asegúrarse de que se ejecute automáticamente al arrancar el sistema:
```
systemctl start testserv
systemctl enable testserv
```

4. Verifica el estado del servicio:
```
systemctl status testserv
```

Si todo está bien, deberías ver un mensaje que indica que el servicio se está ejecutando.


Ahora tu servicio systemd unit está listo para ejecutarse y se iniciará automáticamente al arrancar el sistema.