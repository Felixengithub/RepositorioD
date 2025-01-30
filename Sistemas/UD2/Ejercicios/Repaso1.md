
# Prácticas sobre Gestión de Procesos y Administración de Usuarios y Grupos en Unix/Linux

## Ejercicio 1: Comprobación y modificación de permisos de archivos
1. Crea un archivo llamado `archivo1.txt` en tu directorio de inicio.
2. Comprueba los permisos actuales de `archivo1.txt` usando el comando `ls -l`.
3. Modifica los permisos de forma que:
   - El propietario tenga permisos de lectura y escritura.
   - El grupo tenga permisos de lectura.
   - Los demás usuarios no tengan ningún permiso.
4. Verifica los cambios realizados.

**Solución**:
```bash
touch archivo1.txt
ls -l archivo1.txt
chmod 640 archivo1.txt
ls -l archivo1.txt
```

---

## Ejercicio 2: Creación y modificación de grupos
1. Crea un grupo llamado `desarrollo`.
2. Añade a tu usuario actual al grupo `desarrollo`.
3. Crea otro grupo llamado `administración`.
4. Modifica tu usuario para que también pertenezca al grupo `administración` como grupo secundario.
5. Verifica los grupos a los que pertenece tu usuario.

**Solución**:
```bash
sudo groupadd desarrollo
sudo usermod -aG desarrollo $USER
sudo groupadd administración
sudo usermod -aG administración $USER
groups
```

---

## Ejercicio 3: Gestión de usuarios
1. Crea un usuario llamado `juan` con un directorio de inicio en `/home/juan`.
2. Crea un usuario llamado `maria` y asígnale el shell `/bin/bash`.
3. Verifica la información de ambos usuarios en el archivo `/etc/passwd`.
4. Cambia el shell de `juan` a `/bin/zsh` y comprueba el cambio.

**Solución**:
```bash
sudo adduser juan --home /home/juan o sudo adduser juan -h /home/juan
sudo adduser maria --shell /bin/bash  o sudo adduser maria -s /bin/bash
cat /etc/passwd | grep "juan"
cat /etc/passwd | grep "maria"

sudo usermod -s /bin/zsh juan
cat /etc/passwd
cat /etc/passwd | grep "juan"
```

---

## Ejercicio 4: Propiedad de archivos y permisos de grupo
1. Crea un archivo llamado `proyecto.txt`.
2. Asigna como propietario del archivo al usuario `maria` y como grupo propietario al grupo `desarrollo`.
3. Modifica los permisos del archivo de manera que el grupo `desarrollo` pueda leer y escribir en el archivo, pero los demás usuarios no tengan ningún permiso.
4. Verifica los cambios realizados.

**Solución**:
```bash
touch proyecto.txt
sudo chown maria:desarrollo proyecto.txt
chmod 660 proyecto.txt
ls -l proyecto.txt
```

---

## Ejercicio 5: Cambios de permisos con chmod en formato numérico
1. Crea un directorio llamado `documentos`.
2. Dentro del directorio `documentos`, crea un archivo llamado `notas.txt`.
3. Asigna los siguientes permisos a `notas.txt` usando el formato numérico:
   - Propietario: Lectura, escritura y ejecución.
   - Grupo: Lectura y ejecución.
   - Otros: Sin permisos.
4. Verifica los permisos.

**Solución**:
```bash
mkdir documentos
touch documentos/notas.txt
chmod 750 documentos/notas.txt
ls -l documentos/notas.txt
```

---

## Ejercicio 6: Bloqueo y desbloqueo de cuentas de usuario
1. Crea un usuario llamado `carlos`.
2. Bloquea la cuenta de `carlos` usando el comando adecuado.
3. Verifica si el usuario `carlos` puede iniciar sesión.
4. Desbloquea la cuenta de `carlos` y verifica de nuevo si puede iniciar sesión.

**Solución**:
```bash
sudo adduser carlos
sudo passwd -l carlos
sudo su carlos
# Prueba fallida, ya que la cuenta está bloqueada
sudo passwd -u carlos
sudo su carlos
# Inicio de sesión exitoso
```

---

## Ejercicio 7: Gestión de contraseñas y expiración
1. Crea un usuario llamado `evaristo`.
2. Fuerza a que `evaristo` cambie su contraseña en el próximo inicio de sesión.
3. Verifica la fecha de expiración de la contraseña del usuario `evaristo`.
4. Expira inmediatamente la contraseña de `evaristo` y verifica el cambio.

**Solución**:
```bash
sudo adduser evaristo
sudo chage -d 0 evaristo
chage -l evaristo
sudo passwd -e evaristo
chage -l evaristo
```

---

## Ejercicio 8: Comandos avanzados de sudo
1. Edita el archivo `/etc/sudoers` para permitir que el usuario `maria` pueda reiniciar el sistema sin necesidad de usar contraseña.
2. Verifica que `maria` puede ejecutar el comando `sudo reboot` sin que se le pida la contraseña.
3. Revierte los cambios en el archivo `/etc/sudoers`.

**Solución**:
```bash
sudo visudo
# Añadir la línea:
maria ALL=(ALL) NOPASSWD: /sbin/reboot
# Guardar y salir
sudo -u maria sudo reboot
# Revierte el cambio en el archivo sudoers
```

---

## Ejercicio 9: Uso de alias en sudoers
1. Crea un alias de comando llamado `SHUTDOWN_CMDS` que incluya los comandos `shutdown` y `reboot`.
2. Permite que el grupo `administración` ejecute los comandos del alias `SHUTDOWN_CMDS`.
3. Verifica que los usuarios del grupo `administración` pueden ejecutar dichos comandos.

**Solución**:
```bash
sudo visudo
# Añadir las líneas:
Cmnd_Alias SHUTDOWN_CMDS = /sbin/shutdown, /sbin/reboot
%administración ALL=(ALL) SHUTDOWN_CMDS
# Guardar y salir
```

---

## Ejercicio 10: Gestión de directorios y permisos
1. Crea un directorio llamado `proyectos`.
2. Cambia los permisos del directorio para que solo el propietario tenga permisos de lectura, escritura y ejecución, mientras que el grupo y los demás usuarios no tengan ningún permiso.
3. Crea un archivo dentro de `proyectos` llamado `informe.txt` y verifica los permisos.
4. Cambia los permisos del archivo para que todos puedan leerlo pero solo el propietario pueda modificarlo.

**Solución**:
```bash
mkdir proyectos
chmod 700 proyectos
touch proyectos/informe.txt
ls -l proyectos/informe.txt
chmod 644 proyectos/informe.txt
ls -l proyectos/informe.txt
```

---

## Ejercicio 11: Eliminación de usuarios y grupos
1. Crea un usuario llamado `ana` y un grupo llamado `proyectos`.
2. Añade a `ana` al grupo `proyectos`.
3. Elimina el usuario `ana`, asegurándote de eliminar su directorio de inicio.
4. Elimina el grupo `proyectos`.

**Solución**:
```bash
sudo adduser ana
sudo groupadd proyectos
sudo usermod -aG proyectos ana
sudo deluser --remove-home ana
sudo groupdel proyectos
```

---

## Ejercicio 12: Visualización de información de usuarios
1. Comprueba qué usuario está conectado en la terminal actual.
2. Muestra los grupos a los que pertenece el usuario actual.
3. Obtén la información completa del usuario `juan`, incluyendo su UID, GID y grupos secundarios.

**Solución**:
```bash
whoami
groups
id juan
```

