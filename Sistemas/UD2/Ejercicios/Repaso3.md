
# Ejercicios Prácticos con Soluciones - Unidad Didáctica 2

## **2.1. Permisos y Propiedad de Archivos**

### Ejercicio 1: Modificación de Permisos
**Enunciado:**
- Ajusta los permisos del archivo `informe.txt` para que solo el grupo pueda leer y escribir, pero no ejecutar.

**Solución:**
```bash
chmod 660 informe.txt
```

### Ejercicio 2: Cambio de Propietario y Grupo
**Enunciado:**
- Transfiere la propiedad del archivo `proyecto.txt` al usuario `maria` y cambia el grupo a `desarrollo`.

**Solución:**
```bash
chown maria:desarrollo proyecto.txt
```

## **2.2. Gestión de Usuarios**

### Ejercicio 3: Creación y Configuración de Usuarios
**Enunciado:**
- Crea un usuario llamado `temporal` con un directorio home específico en `/opt/temp`.

**Solución:**
```bash
useradd -d /opt/temp temporal
```

### Ejercicio 4: Desactivación de Usuarios
**Enunciado:**
- Desactiva el usuario `temporal` sin eliminar su directorio home, asegurando que no pueda iniciar sesión.

**Solución:**
```bash
usermod -L temporal
```

## **2.3. Gestión de Grupos**

### Ejercicio 5: Ampliación de Grupos
**Enunciado:**
- Añade al usuario `laura` al grupo `proyecto` y asegúrate de que es su grupo secundario.

**Solución:**
```bash
usermod -aG proyecto laura
```

### Ejercicio 6: Creación y Eliminación de Grupos
**Enunciado:**
- Crea un grupo llamado `nuevo_equipo` y luego elimínalo.

**Solución:**
```bash
groupadd nuevo_equipo
groupdel nuevo_equipo
```

## **2.4. Permisos y Roles de Superusuario**

### Ejercicio 7: Restricciones de sudo
**Enunciado:**
- Configura el usuario `carlos` para que solo pueda ejecutar el comando `ls` usando `sudo`.

**Solución:**
```bash
Dentro de /etc/sudoers (Sudo visudo)
carlos ALL=(ALL) NOPASSWD: /bin/ls 
```

## **2.5. Seguridad de Cuentas y Contraseñas**


### Ejercicio 8: Política de Contraseñas
- Configura una política que requiera contraseñas con al menos un símbolo y una cifra para el usuario `nuevo_usuario`.

**Solución:**
Para configurar una política de contraseñas que cumpla con los requisitos especificados, es necesario utilizar las herramientas de manejo de políticas de contraseñas como PAM (Pluggable Authentication Modules) en sistemas Unix/Linux. Aquí se muestra cómo configurar `pam_pwquality` para establecer requisitos de complejidad en las contraseñas.

1. Edita el archivo de configuración PAM para `passwd` utilizando un editor de texto como `nano` o `vim`:
   ```bash
   sudo nano /etc/pam.d/common-password
   ```

2. Busca la línea que contiene `pam_pwquality.so` y modifícala para incluir las reglas de complejidad:
   ```bash
   password requisite pam_pwquality.so retry=3 minlen=8 dcredit=-1 ocredit=-1
   ```

   Donde:
   - `minlen=8` especifica la longitud mínima de la contraseña.
   - `dcredit=-1` requiere al menos un dígito.
   - `ocredit=-1` requiere al menos un carácter especial.

3. Guarda el archivo y cierra el editor.
4. Para aplicar los cambios, el usuario `nuevo_usuario` debe cambiar su contraseña para que la nueva política sea efectiva:
   ```bash
   sudo passwd nuevo_usuario
   ```

   Sigue las instrucciones para establecer una nueva contraseña que cumpla con la política configurada.


### Ejercicio 9: Cambio de Contraseñas
**Enunciado:**
- Cambia la contraseña del usuario `marco` para que cumpla con la nueva política de seguridad.

**Solución:**
```bash
sudo passwd marco
# Sigue las instrucciones para establecer una nueva contraseña que cumpla con la política de seguridad.
```


## **2.6. Monitoreo de Procesos**

### Ejercicio 10: Monitoreo Avanzado
**Enunciado:**
- Configura `htop` para mostrar solo los procesos del usuario `laura`.

**Solución:**
```bash
htop -u laura
```

## **2.7. Control de Procesos**

### Ejercicio 11: Manipulación de Procesos
**Enunciado:**
- Envía una señal para detener todos los procesos asociados al comando `firefox`.

**Solución:**
```bash
pkill -STOP firefox
```


## **2.8. Programación de Tareas**

### Ejercicio 12: Automatización con cron
**Enunciado:**
- Configura una tarea cron para ejecutar `script_diario.sh` todos los días a las 3:00 AM.

**Solución:**
```bash
crontab -e 
Añadir: 0 3 * * * /path/to/script_diario.sh
```

