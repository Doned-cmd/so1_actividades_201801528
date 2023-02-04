# SOPES1 Tarea1 201801528
# Kernel 
El Kernel es un programa que funciona en el centro del sistema operativo y controla todas las funciones importantes del hardware, consta de varias capas:
* Interfaz con el hardware (maneja procesadores, memoria y dispositivos), aquí se maneja el controlador de red o el PCI Express.
* Gestion de la memoria, distribuye la memoria RAM y la memoria virutal.
* Gestor de procesos (Scheduler), se encarga de la gestión del tiempo y permite el multitasking.
* Gestor de dispositivos.
* Sistema de archivos, se asigna espacio en memoria a los procesos, ya sea memoria principal o secundaria.
## Tipos de Kernel y sus diferencias
### Kernel Monolítico:
Es un kenrel amplio para todas las tareas, es el responsable de la gestion de memoria y de los procesos, de la comunicacion entre estos y proporciona distintas funciones de soporte de drivers y hardware.
### Microkernel:
Se diseño intencionalmente con un tamaño mas pequeño para que en caso de fallo no paralice todo el sistema operativo. Pero para cumplir las funciones de un kernel mayor, esta dividido en varios modulos. 
### Kernel híbrido:
Es la combinacion entre kernel monolitico y microkernel, el kernel monolitico se vuelve compacto y modulable, mientras que otras partes del kernel pueden cargarse dinamicamente.

# Kernel Mode vs User Mode
| Kernel Mode  | User Mode |
|------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| En el Kernel Mode los programas tienen acceso directo y sin restricciones a los recursos del sistema | En el User Mode, los programas se ejecuta y empieza |   
| Si ocurre alguna interrupcion es probable que todo el sistema falle | Solo un proceso falla si ocurre una interrupcion |   
| El Kernel mode tambien se conoce como master mode, privileged mode o system mode | Al user mode tambien se le conoce como unprivileged mode, restricted mode, o slave mode |
| Todos los procesos se realizan en una misma direccion virtual | los procesos estan en diferentes direcciones virtuales |
| Las aplicaciones tienen mas privilegios | tienen menos privilegios |
| Puede acceder a ambos programas, los del kernel mode y los de user mode | solo puede acceder a los programas del kenrel no directamente |
| El bit del modo del kernel-mode es 0  | el bit de modo del user-mode es 1 |
| El kernel-mode puede hacer referencia a cualquier bloque de memoria y acceder directamente al CPU | Necesita una api para lograr esto |
