
# Ejercicios Prácticos - Unidad Didáctica 2

## **2.1. Permisos y Propiedad de Archivos**

### Ejercicio 1: Comprobación de Permisos
**Enunciado:**
Lista los permisos de todos los archivos en tu directorio actual.

**Solución:**
```bash
ls -l
```

### Ejercicio 2: Modificación de Permisos
**Enunciado:**
Modifica los permisos del archivo `documento.txt` para que el propietario pueda leer, escribir y ejecutar, el grupo solo pueda leer y ejecutar, y otros no tengan permisos.

**Solución:**
```bash
chmod 750 documento.txt
```

### Ejercicio 3: Cambio de Propietario y Grupo
**Enunciado:**
Cambia el propietario del archivo `mi_archivo.txt` a `carlos` y el grupo a `desarrollo`.

**Solución:**
```bash
chown carlos:desarrollo mi_archivo.txt
```

## **2.2. Gestión de Usuarios**

### Ejercicio 4: Creación y Eliminación de Usuarios
**Enunciado:**
- Crea un usuario llamado `prueba`.
- Elimina el usuario `prueba`, asegurándote de eliminar también su directorio home.

**Solución:**
```bash
sudo useradd prueba
sudo userdel -r prueba
```

### Ejercicio 5: Modificación de Usuarios
**Enunciado:**
- Cambia el shell por defecto del usuario `rogelio`.
- Añade al usuario `rogelio` al grupo `sudo`.

**Solución:**
```bash
sudo usermod -s /bin/zsh rogelio
sudo usermod -aG sudo rogelio
```

## **2.3. Gestión de Grupos**

### Ejercicio 6: Creación y Eliminación de Grupos
**Enunciado:**
- Crea un grupo llamado `equipoX`.
- Elimina el grupo `equipoX`.

**Solución:**
```bash
sudo groupadd equipoX
sudo groupdel equipoX
```

### Ejercicio 7: Modificación de Grupos
**Enunciado:**
- Añade al usuario `laura` al grupo `equipoX`.
- Cambia el GID del grupo `equipoX` a `1010`.

**Solución:**
```bash
sudo usermod -aG equipoX laura
sudo groupmod -g 1010 equipoX
```

## **2.4. Permisos y Roles de Superusuario**

### Ejercicio 8: Uso de sudo
**Enunciado:**
- Ejecuta un comando como superusuario para actualizar la lista de paquetes del sistema.
- Accede al contenido del directorio `/root` como superusuario.

**Solución:**
```bash
sudo apt update
sudo -u root ls /root
```

## **2.5. Seguridad de Cuentas y Contraseñas**

### Ejercicio 9: Cambio de Contraseñas
**Enunciado:**
Cambia la contraseña del usuario `marco`.

**Solución:**
```bash
sudo passwd marco
```

### Ejercicio 10: Configuración de Contraseñas
**Enunciado:**
Establece una política de contraseñas que obligue a cambiarlas cada 90 días y que las nuevas contraseñas tengan al menos 12 caracteres.

**Solución:**
```bash
sudo chage -M 90 -m 12 marco
```

## **2.6. Conceptos de Procesos en Unix/Linux**

### Ejercicio 11: Monitoreo y Gestión de Procesos
**Enunciado:**
- Muestra todos los procesos del usuario actual.
- Utiliza una herramienta de monitoreo en tiempo real para observar los procesos activos.

**Solución:**
```bash
ps -u $USER
top
```

## **2.7. Monitoreo de Procesos**

### Ejercicio 12: Uso Avanzado de Monitoreo
**Enunciado:**
- Identifica los procesos que consumen más recursos del sistema.
- Configura una herramienta avanzada de monitoreo para mostrar procesos de un usuario específico.

**Solución:**
```bash
htop
htop -u username
```

## **2.8. Control de Procesos**

### Ejercicio 13: Control de Procesos con Señales
**Enunciado:**
- Crea y ejecuta `script.sh` en segundo plano. Envía una señal para terminar su ejecución.

**Solución:**
```bash
./script.sh &
kill -15 <PID>
```

### Ejercicio 14: Uso de `nice` y `renice`
**Enunciado:**
- Inicia `script.sh` con una prioridad baja.
- Cambia la prioridad de un proceso en ejecución a una más alta.

**Solución:**
```bash
nice -n 15 ./script.sh &
renice -5 <PID que me haya salido)
```

## **2.9. Programación de Tareas**

### Ejercicio 15: Uso de cron y at
**Enunciado:**
- Crea una tarea en `cron` para ejecutar `backup.sh` todos los días a medianoche.
- Programa `report.sh` para que se ejecute una vez mañana al mediodía usando `at`.

**Solución:**
```bash
crontab -e 
y añado 0 0 * * * /path/to/backup.sh
echo "/path/to/report.sh" | at 12:00 tomorrow
```
