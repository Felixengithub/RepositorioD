# Ejercicios Prácticos sobre Programación de Tareas en Unix/Linux

## Ejercicio 1: Programación de Tareas Periódicas con cron
1. **Enunciado**: Abre el archivo crontab del usuario actual utilizando el comando `crontab -e`.
   - Programa un comando para mostrar un mensaje "¡Hora de hacer una copia de seguridad!" todos los días a las 8:00 p.m.
   - **Solución**: Abre el archivo crontab con `crontab -e` y agrega la siguiente línea:
     ```
     0 20 * * * echo "¡Hora de hacer una copia de seguridad!"
     ```

2. **Enunciado**: Configura una tarea cron para ejecutar el comando `df -h` todos los domingos a las 5:00 p.m. y redirigir la salida a un archivo llamado `/var/log/espacio_en_disco.log`.
   - **Solución**: Agrega la siguiente línea al archivo crontab:
     ```
     0 17 * * 0 df -h > /var/log/espacio_en_disco.log
     ```

3. **Enunciado**: Programa una tarea cron para eliminar los archivos temporales `.tmp` en el directorio `/tmp` cada 10 minutos.
   - **Solución**: Agrega la siguiente línea al archivo crontab:
     ```
     */10 * * * * rm -rf /tmp/*.tmp
     ```

4. **Enunciado**: Crea una tarea cron para ejecutar un script `/usr/local/bin/reiniciar_servicio.sh` el primer día de cada mes a las 3:00 a.m.
   - **Solución**: Agrega la siguiente línea al archivo crontab:
     ```
     0 3 1 * * /usr/local/bin/reiniciar_servicio.sh
     ```

5. **Enunciado**: Lista todas las tareas cron definidas para el usuario actual utilizando el comando `crontab -l`.
   - **Solución**: Ejecuta el comando:
     ```bash
     crontab -l
     ```

## Ejercicio 2: Programación de Tareas Puntuales con at
1. **Enunciado**: Programa una tarea con `at` para ejecutar el comando `ls -l /home/usuario` a las 4:30 p.m. del día actual.
   - **Solución**: Ejecuta el siguiente comando:
     ```bash
     echo "ls -l /home/usuario" | at 16:30
     ```

2. **Enunciado**: Crea una tarea con `at` para ejecutar el comando `tar -czf /home/usuario/backup.tar.gz /home/usuario` a la medianoche de hoy.
   - **Solución**: Ejecuta el siguiente comando:
     ```bash
     echo "tar -czf /home/usuario/backup.tar.gz /home/usuario" | at midnight
     ```

3. **Enunciado**: Utiliza `at` para programar un comando que elimine el archivo `old_logs.txt` dentro de dos días.
   - **Solución**: Ejecuta el siguiente comando:
     ```bash
     echo "rm /home/usuario/old_logs.txt" | at now + 2 days
     ```

4. **Enunciado**: Lista todas las tareas programadas con `at` utilizando el comando `atq`.
   - **Solución**: Ejecuta el comando:
     ```bash
     atq
     ```

5. **Enunciado**: Elimina una de las tareas pendientes de `at` utilizando el comando `atrm`.
   - **Solución**: Identifica la tarea a eliminar con `atq` y utiliza el comando `atrm [número_de_tarea]`, por ejemplo:
     ```bash
     atrm 1
     ```

