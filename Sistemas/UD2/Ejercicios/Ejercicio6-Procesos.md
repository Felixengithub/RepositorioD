
# Ejercicios Prácticos y Soluciones sobre Conceptos de Procesos en Unix/Linux

## Ejercicio 1: Identificación de Componentes de un Proceso
1. Ejecuta el comando `tail -f /var/log/syslog` (requiere permisos de root o logs con acceso de usuario) y, en otra terminal, abre un nuevo archivo con `nano info.txt`.
   - Identifica el PID y el PPID de ambos procesos utilizando el comando `ps -ef | grep [comando]`.
   - Compara los resultados y responde: ¿Cuál es el PPID del proceso `tail` y `nano`? ¿Por qué es importante este valor?

   **Solución**: Al ejecutar el comando `ps -ef | grep tail` y `ps -ef | grep nano`, obtendrás una lista de procesos en ejecución. El PPID de cada proceso indica cuál es su proceso padre. Por lo general, el PPID para procesos ejecutados por el usuario será el shell (como bash), y para procesos del sistema podría ser `systemd` u otro servicio.


## Ejercicio 2: Trabajo con Procesos en Primer y Segundo Plano
1. Ejecuta el comando `ping -c 100 google.com` y verifica que se está ejecutando en primer plano.
   - Mientras el comando está en primer plano, intenta ejecutar otro comando como `ls -l`. ¿Qué sucede?
   - Detén el proceso de `ping` utilizando `Ctrl + Z`
   - Comprueba los procesos activos en segundo plano con el comando `jobs`.
   - Reanudalo con `fg`mas el job_id.
   - Detenlo de nuevo  utilizando `Ctrl + Z`

   **Solución**: Cuando ejecutas `ping -c 100 google.com` en primer plano, la terminal queda ocupada y no puedes ejecutar otros comandos hasta que finaliza. Al presionar `Ctrl + Z`, el proceso se detiene temporalmente y al usar `fg`, se envía al primer plano.

2. Lleva el proceso `ping` de vuelta al primer plano utilizando el comando `fg` y cancela su ejecución con `Ctrl + C`.

   **Solución**: Al utilizar el comando `fg`, puedes traer el proceso `ping` nuevamente al primer plano y finalizar su ejecución con `Ctrl + C`, deteniendo el comando.

## Ejercicio 3: Estados de los Procesos
1. Ejecuta un script que duerma durante 10 segundos con el siguiente comando: `sleep 10 &`.
   - Observa el estado del proceso utilizando `ps -o pid,state,cmd | grep sleep`.
   - Explica cuál es el estado actual del proceso y por qué se encuentra en ese estado.

   **Solución**: Al ejecutar `sleep 10 &`, el proceso estará en estado "S" (Sleeping) mientras espera a que termine el tiempo de espera de 10 segundos. Esto se puede verificar con el comando `ps -o pid,state,cmd | grep sleep`.

2. Ejecuta un comando `find` que busque archivos grandes en tu sistema, pero esta vez en segundo plano: `find / -size +1G &`.
   - Utiliza `ps` para observar el estado del proceso `find`. ¿Qué estado se muestra y por qué?
   - Si el estado cambia mientras el comando se ejecuta, ¿qué significan esos cambios?

   **Solución**: El comando `find / -size +1G &` en segundo plano estará en estado "S" si está esperando la disponibilidad de archivos o "R" (Running) cuando está en ejecución activa. Estos estados pueden cambiar dependiendo de los recursos disponibles y las operaciones que esté realizando.

## Ejercicio 4: Gestión de Procesos y Señales
1. Ejecuta el comando `yes > /dev/null &` para generar un proceso en segundo plano.
   - Verifica el PID del proceso `yes` y finalízalo con `kill -15 [PID]`.
   - ¿Qué sucede al usar la señal `-15` (SIGTERM)? ¿El proceso se ha detenido correctamente? Explica por qué.

   **Solución**: La señal `-15` envía una solicitud educada de terminación al proceso, permitiendo que finalice de manera controlada. En este caso, `yes` detendrá su ejecución correctamente.

2. Ejecuta de nuevo el comando `yes > /dev/null &`, pero esta vez intenta finalizar el proceso con `kill -9 [PID]`.
   - Explica la diferencia entre las señales `-15` y `-9`. ¿En qué situaciones usarías cada una?

   **Solución**: La señal `-9` (SIGKILL) fuerza la terminación inmediata del proceso sin permitirle manejar la señal. Se utiliza cuando un proceso no responde a la señal `-15` o se encuentra en un estado crítico.

## Ejercicio 5: Manejo de Procesos Daemon y Orfandad
1. Crea un pequeño script `huérfano.sh` que se ejecute en segundo plano:
   ```bash
   #!/bin/bash
   while true; do
       echo "Soy un proceso huérfano" >> orfano.log
       sleep 5
   done
   ```

   - Ejecuta el script en segundo plano con `./huérfano.sh &` y anota su PID.
   - Cierra tu sesión de usuario y vuelve a iniciar sesión.
   - Observa si el proceso sigue activo con el comando `ps -ef | grep huérfano`. ¿Qué ha sucedido con el proceso y su PPID?

   **Solución**: Al ejecutar el script `huérfano.sh` y cerrar la sesión, el proceso se convierte en un proceso huérfano y será adoptado por `init` o `systemd`. El nuevo PPID de este proceso será el PID del proceso `init` (generalmente 1).

2. Inicia un daemon básico utilizando el siguiente comando: `nohup watch -n 60 date > /dev/null 2>&1 &`.
   - Explica la diferencia entre un proceso daemon y un proceso huérfano. ¿Qué características los distinguen?

   **Solución**: Un daemon es un proceso diseñado para ejecutarse en segundo plano y manejar tareas específicas del sistema. A diferencia de un proceso huérfano, un daemon no es creado debido a la terminación de su padre, sino que se ejecuta intencionalmente de forma independiente.

