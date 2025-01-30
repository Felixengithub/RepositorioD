1. Ejercicio: Uso básico de sudo
Escribe el comando que un usuario debe ejecutar para actualizar la lista de paquetes de un sistema basado en Debian, utilizando el comando sudo.( apt update )

**Solución:**
```bash
sudo apt update
```


2. Ejercicio: Especificación de usuario con sudo
Escribe el comando sudo necesario para listar el contenido del directorio /var/log como si fueras el usuario syslog.

**Solución:**
```bash
sudo -u syslog ls /var/log
```

3. Ejercicio: Configuración de permisos en sudoers
¿Qué entrada deberías agregar al archivo /etc/sudoers para permitir que el usuario maria pueda reiniciar el servicio nginx sin que se le solicite la contraseña?

**Solución:**
```bash
maria ALL=(ALL) NOPASSWD: /usr/sbin/systemctl restart nginx
```

4. Ejercicio: Uso de alias en sudoers
Crea un alias de comandos en el archivo /etc/sudoers que permita a los usuarios del alias ADMINS ejecutar los comandos shutdown y reboot sin tener que escribirlos uno por uno.

**Solución:**
```bash
User_Alias ADMINS = juan, carlos, maria
Cmnd_Alias SHUTDOWN_CMDS = /sbin/shutdown, /sbin/reboot

ADMINS ALL=(ALL) SHUTDOWN_CMDS

```

