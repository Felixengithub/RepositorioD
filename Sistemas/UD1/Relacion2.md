## Ejercicios con `find`

##### 1. Busca archivos `.conf` que sean mayores a 5 KB y que hayan sido modificados en los últimos 7 días:
```bash
find . -size +5k -mtime -7 -name "*.conf"
```

##### 2. Encontrar directorios vacíos (consulta el manual) dentro del sistema a partir del directorio `/var`:

```bash
find /var -empty -type d
```

##### 3. Busca archivos `.log` de entre 1 y 5 MB que no se hayan modificado en los últimos 30 días:

```bash
find . -name "*.log" -size +1M -size -5M -mtime +30
```

##### 4. Busca todos los archivos que tengan el nombre `README` o `readme` y que no se hayan modificado en los últimos 10 días:

```bash
find . -iname "readme" -mtime +10
```

##### 5. Busca archivos `.sh` que sean menores a 1 KB:

```bash
find . -name "*.sh" -size -1k
```

##### 6. Busca archivos de texto (`*.txt`) en `~/Documentos` y `~/Descargas` que contengan la palabra "proyecto" en su nombre y que hayan sido modificados en los últimos 3 días:

```bash
find ~/Descargas/ ~/Documentos/ -name "*proyecto*.txt" -mtime -3
```

##### 7. Busca archivos en `/etc` que sean mayores a 100 KB y cuyo nombre comience con "host":

```bash
find /etc -name "host*" -size +100k
```

##### 8. Busca directorios que tengan más de 3 caracteres en su nombre y hayan sido modificados en las últimas 24 horas:

```bash
find . -type d -name "????*" -mtime -1
```

##### 9. Busca archivos cuyo nombre comience con "log" y tengan entre 10 y 20 KB en `/tmp`:

```bash
find /tmp -name "log*" -size +10k -size -20k
```

##### 10. Busca archivos en `/var` que sean archivos regulares (f) y que hayan sido modificados hace exactamente 15 días:

```bash
find /var -type f -mtime 15
```

## Ejercicios con `grep`

##### 11. Busca la palabra "error" ignorando mayúsculas y muestra el número de línea en todos los archivos `.log` dentro de `/var/log`:

```bash
grep -r -n "error" /var/log
```

##### 12. Busca recursivamente la palabra "server" en todos los archivos de configuración (`*.conf`) dentro de `/etc` y muestra solo el nombre de los archivos que la contienen:

```bash
grep -r -l "server" /etc/*.conf
```

##### 13. Busca líneas en archivos `.txt` en el directorio `~/Documentos` que NO contengan la palabra "DEBUG":

```bash
grep -v -r "DEBUG" ~/Documentos/*.txt
```

##### 14. Busca la palabra "memory" en los archivos `.log` de `/var/log` y muestra el nombre del archivo y el número de línea:

```bash
grep -r -n "memory" /var/log/*.log
```

##### 15. Busca la palabra "ERROR" dentro de archivos `.conf` y `.log` en `/etc` y muestra solo las líneas que contengan la palabra en mayúsculas:

```bash

grep -r -n "ERROR" /etc/*.{conf,log} 

```

##### 16. Busca recursivamente la palabra "timeout" en todos los archivos dentro de `/etc` y muestra los archivos que contienen la palabra pero no la línea donde se encuentra:

```bash
grep -r -l "timeout" /etc
```

##### 17. Busca la palabra "root" dentro del archivo `/etc/passwd` y muestra las líneas que no contengan esa palabra, ignorando mayúsculas:

```bash
grep -i -v "root" /etc/passwd
```

##### 18. Busca la palabra "session" en todos los archivos `.conf` y `.sh` en `/home` y muestra el número de línea donde se encuentra:

```bash
grep -n -r "session" /home/*.{conf,sh}
```

##### 19. Busca la palabra "shutdown" en todos los archivos de `/var/log` y muestra las líneas que la contienen junto con el número de línea:

```bash
grep -r -n "shutdown" /var/log/
```