# Ejercicios Prácticos y Soluciones sobre Monitoreo de Procesos en Unix/Linux

## Ejercicio 1: Explorando el Comando ps
1. Ejecuta el comando `ps aux` y observa la salida. Intenta identificar el proceso con el mayor uso de memoria.

   **Solución**: Al ejecutar `ps aux`, la columna `%MEM` indica el porcentaje de memoria utilizado por cada proceso. El proceso con el valor más alto en esta columna es el que consume más memoria.

2. Filtra los procesos del usuario `root` utilizando el comando `ps -u root`. ¿Cuántos procesos están en ejecución para este usuario?

   **Solución**: El comando `ps -u root` muestra solo los procesos del usuario `root`. Para contar la cantidad de procesos, puedes usar el comando `ps -u root | wc -l`, restando una línea por el encabezado.

3. Muestra solo los procesos cuyo nombre es `sshd` usando el comando `ps -C sshd`.

   **Solución**: El comando `ps -C sshd` lista todos los procesos que tienen el nombre `sshd` en su comando. Si `sshd` está en ejecución, se mostrará la lista con sus respectivos PID y estado.

4. Ejecuta el comando `ps -ejH` y visualiza la jerarquía de los procesos. Identifica el proceso padre de tu sesión de terminal actual.

   **Solución**: El comando `ps -ejH` muestra la jerarquía de procesos. El proceso padre de la sesión de terminal actual puede identificarse buscando el proceso asociado a la terminal (como `bash` o `zsh`) y verificando su PPID (Parent Process ID).

## Ejercicio 2: Interacción con top
1. Ejecuta el comando `top` y observa la información del encabezado (load average, uso de memoria, etc.). ¿Cuál es la carga promedio del sistema en los últimos 5 minutos?

   **Solución**: Al ejecutar `top`, la línea superior muestra la carga promedio en los últimos 1, 5 y 15 minutos. El valor de la carga promedio de 5 minutos se puede ver como el segundo número en la sección `load average`.

2. Dentro de `top`, ordena los procesos por uso de memoria utilizando la tecla `M`. ¿Cuál es el proceso que consume más memoria?

   **Solución**: Al presionar la tecla `M`, `top` ordena los procesos por el uso de memoria. El proceso que aparece en la primera fila es el que consume más memoria en ese momento.

3. Cambia la prioridad de un proceso utilizando la tecla `r` y especifica un PID. Utiliza un valor de `nice` mayor para reducir su prioridad.

   **Solución**: Dentro de `top`, presiona la tecla `r` para cambiar la prioridad de un proceso. Ingresa el PID del proceso y un valor de `nice` mayor (por ejemplo, de 0 a 10) para reducir su prioridad. La prioridad se modificará, y esto se puede verificar en la columna `PR` de `top`.

4. Termina un proceso en ejecución utilizando la tecla `k` y especificando su PID. Confirma que el proceso ha sido eliminado con el comando `ps`.

   **Solución**: En `top`, presiona la tecla `k` para terminar un proceso. Especifica el PID y la señal (`15` para una terminación segura). Luego, usa el comando `ps` para confirmar que el proceso ha sido eliminado.

5. Utiliza `top` para identificar un proceso en estado "Sleeping" (`S`) y márcalo para ser terminado.

   **Solución**: Observa la columna `S` en `top` para identificar los procesos en estado `S` (Sleeping). Luego, selecciona el proceso y termina su ejecución utilizando la tecla `k`.

## Ejercicio 3: Exploración de htop
1. Ejecuta el comando `htop` y navega por los diferentes procesos. Identifica el uso de CPU por núcleo y el consumo total de memoria.

   **Solución**: Al ejecutar `htop`, las barras de la parte superior muestran el uso de CPU por núcleo. El consumo total de memoria se puede observar en la barra que indica `Mem`.

2. Ordena los procesos por uso de E/S presionando `F6` y seleccionando `I/O`. ¿Qué proceso consume más E/S?

   **Solución**: Dentro de `htop`, presiona `F6` y selecciona `I/O` para ordenar los procesos por el uso de E/S. El proceso que aparece en la primera fila es el que tiene el mayor consumo de E/S.

3. Cambia la prioridad de un proceso utilizando `F7` para reducirla o `F8` para aumentarla.

   **Solución**: Selecciona un proceso en `htop` y utiliza `F7` para reducir su prioridad (`nice`) o `F8` para aumentarla. Esto se verá reflejado en la columna `NI` de `htop`.

4. Visualiza el árbol de procesos utilizando `F5`. Identifica la relación jerárquica entre los procesos de tu sesión de usuario.

   **Solución**: Al presionar `F5`, `htop` muestra la jerarquía de procesos en un formato de árbol. Navega por el árbol para ver los procesos hijos y sus procesos padres asociados.

5. Finaliza un proceso utilizando `F9` y seleccionando la opción `SIGKILL` (9) en `htop`. Verifica que el proceso ha sido eliminado con el comando `ps`.

   **Solución**: Selecciona un proceso en `htop`, presiona `F9` y elige `SIGKILL (9)` para finalizarlo. Usa el comando `ps` para confirmar que el proceso ha sido eliminado.

