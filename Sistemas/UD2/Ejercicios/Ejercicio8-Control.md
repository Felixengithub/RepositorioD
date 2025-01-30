# Ejercicios Prácticos y Soluciones sobre Control de Procesos en Unix/Linux

## Ejercicio 1: Control de Procesos con Señales
1. **Enunciado**: Identifica el PID de un proceso en ejecución (por ejemplo, `sleep 120` ejecutado en segundo plano) utilizando el comando `ps`.
   - **Solución**: Ejecuta el comando `sleep 120 &` para iniciar el proceso en segundo plano. Luego, utiliza el comando `ps aux | grep sleep` para obtener el PID del proceso.

2. **Enunciado**: Envía una señal `SIGTERM` (15) al proceso identificado usando `kill`. Verifica si el proceso ha terminado.
   - **Solución**: Usa el comando `kill -15 [PID]` para enviar la señal `SIGTERM`. Verifica si el proceso ha terminado utilizando nuevamente el comando `ps` o `jobs`.

3. **Enunciado**: Ejecuta nuevamente el comando `sleep 120 &`, y esta vez envíale la señal `SIGSTOP` para detenerlo temporalmente. Verifica el estado del proceso.
   - **Solución**: Envía la señal `SIGSTOP` utilizando `kill -STOP [PID]`. Verifica el estado del proceso con `ps` y observa que se muestra como `T` (Stopped).

4. **Enunciado**: Reanuda el proceso con la señal `SIGCONT`. Confirma que el proceso ha vuelto a ejecutarse.
   - **Solución**: Envía la señal `SIGCONT` utilizando `kill -CONT [PID]`. Verifica con `ps` que el estado del proceso ha cambiado de `T` a `S` (Sleeping) o `R` (Running).

5. **Enunciado**: Termina el proceso utilizando la señal `SIGKILL` (9). Confirma que el proceso ha sido eliminado.
   - **Solución**: Envía la señal `SIGKILL` utilizando `kill -9 [PID]`. Verifica que el proceso ha sido eliminado utilizando `ps` o `jobs`.

## Ejercicio 2: Control de Trabajos con jobs, bg y fg
1. **Enunciado**: Ejecuta el comando `sleep 300` y detén su ejecución temporalmente utilizando `Ctrl + Z`.
   - **Solución**: Ejecuta el comando `sleep 300` y presiona `Ctrl + Z` para detener el proceso. El comando se suspenderá, y verás un mensaje indicando que el trabajo ha sido detenido.

2. **Enunciado**: Muestra los trabajos actuales en la terminal con el comando `jobs`.
   - **Solución**: Usa el comando `jobs` para listar todos los trabajos actuales de la terminal, mostrando su estado y su número de trabajo.

3. **Enunciado**: Reanuda el trabajo detenido con el comando `bg` para que continúe en segundo plano.
   - **Solución**: Utiliza el comando `bg %[número_del_trabajo]` (por ejemplo, `bg %1`) para reanudar el trabajo detenido y ejecutarlo en segundo plano.

4. **Enunciado**: Verifica que el trabajo continúa ejecutándose en segundo plano utilizando `jobs`.
   - **Solución**: Ejecuta nuevamente el comando `jobs` para confirmar que el trabajo se está ejecutando en segundo plano.

5. **Enunciado**: Trae el trabajo de vuelta al primer plano utilizando el comando `fg`.
   - **Solución**: Utiliza el comando `fg %[número_del_trabajo]` (por ejemplo, `fg %1`) para traer el trabajo de vuelta al primer plano y permitir la interacción directa con él.

## Ejercicio 3: Ajuste de Prioridad de Procesos con nice y renice
1. **Enunciado**: Ejecuta el comando `tar -czf backup.tar.gz /var/log &` utilizando un valor de `nice` de 15.
   - **Solución**: Usa el comando `nice -n 15 tar -czf backup.tar.gz /var/log &` para iniciar el proceso con un valor de `nice` bajo, indicando baja prioridad.

2. **Enunciado**: Verifica la prioridad del proceso utilizando el comando `ps -o pid,nice,cmd`.
   - **Solución**: Usa el comando `ps -o pid,nice,cmd` para ver la columna `NI` (niceness) y confirmar el valor de prioridad del proceso `tar`.

3. **Enunciado**: Cambia la prioridad del proceso utilizando el comando `renice` para darle un valor de `-5`. Confirma que la prioridad ha sido modificada.
   - **Solución**: Utiliza el comando `renice -5 [PID]` para ajustar la prioridad del proceso. Verifica nuevamente con `ps -o pid,nice,cmd` para confirmar el cambio en la columna `NI`.

4. **Enunciado**: Intenta cambiar la prioridad de un proceso sin permisos de superusuario para comprobar las restricciones.
   - **Solución**: Ejecuta `renice -5 [PID]` en un proceso del cual no tienes permisos de superusuario. El sistema te mostrará un mensaje de error indicando que no tienes privilegios suficientes para disminuir la prioridad.

