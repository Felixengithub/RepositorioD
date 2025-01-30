# Prueba Técnica 2: Gestión de Procesos y Administración de Usuarios y Grupos

## [Enlace GitHub](https://classroom.github.com/a/YP__kD6A)


## Ejercicio 1: Configuración de Permisos
1. Cambia los permisos del archivo `reporte.txt` para que solo el usuario propietario pueda leer y escribir, y nadie más pueda acceder.
2. Describe cómo afectaría la configuración de permisos si usáramos el comando `chmod 777 reporte.txt`.

## Ejercicio 2: Gestión de Propiedad de Archivos
1. Cambia el propietario del archivo `data.csv` a `usuario1` y el grupo a `grupo1`.
2. Muestra cómo verificar la propiedad y los permisos del archivo después del cambio.
3. Explica cómo restringir el acceso al archivo `data.csv` solo para el propietario y el grupo.

## Ejercicio 3: Creación y Gestión de Usuarios
1. Crea un nuevo usuario llamado `nuevo_usuario` con un directorio home en `/home/nuevo`.
2. Cambia la shell predeterminada de `nuevo_usuario` a `/bin/zsh`.

## Ejercicio 4: Control de Acceso de Usuario
1. Configura al usuario `fernando_alonso` para que solo pueda ejecutar el comando `cp` usando `sudo` sin necesidad de contraseña.

## Ejercicio 5: Gestión de Grupos
1. Crea un grupo llamado `dev_team`.
2. Añade al usuario `nuevo_usuario` al grupo `dev_team` y muestra cómo verificar su pertenencia al grupo.

## Ejercicio 6: Seguridad de Contraseñas
1. Configura la política de contraseñas para requerir un mínimo de 12 caracteres, al menos dos dígitos y una letra mayúscula.
2. Fuerza al usuario `fernando_alonso` a cambiar su contraseña en el próximo inicio de sesión.

## Ejercicio 7: Monitoreo de Procesos
1. Utiliza `top` para mostrar los procesos que consumen más recursos de CPU y explica cómo terminar un proceso desde `top`.
2. Utiliza `htop` para mostrar los procesos y explica cómo terminar un proceso desde `htop`.

## Ejercicio 8: Programación de Tareas con Cron
1. Escribe una tarea cron para ejecutar `backup.sh` a las 2:00 AM todos los domingos.
2. Verifica que la tarea cron se ha configurado correctamente.
3. Configura una tarea cron para ejecutar `log_cleanup.sh` cada primer lunes de mes a las 1:00 AM y redirige su salida a un archivo de log.

## Ejercicio 9: Programación de Tareas Puntuales con `at`
1. Programa una tarea usando `at` para ejecutar `script.sh` a las 10:00 PM hoy.
2. Muestra cómo listar todas las tareas programadas con `at`.

## Ejercicio 10: Administración Avanzada de Usuarios y Grupos
1. Elimina al usuario `temp_user` usando `deluser`.
2. Crea un grupo llamado `web_admins` usando `groupadd`.
3. Modifica el grupo `web_admins` para cambiar su GID a 4000 usando `groupmod`.
4. Configura ALIAS en sudoers para agrupar varios comandos bajo un solo nombre.
5. Configura ALIAS en sudoers para agrupar varios usuarios bajo un solo nombre y asignarles permisos específicos.
