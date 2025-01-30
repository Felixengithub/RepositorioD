
# Ejercicio 1: Configuración y Diagnóstico de Redes

## Objetivo
Practicar el uso de herramientas para configurar interfaces de red y diagnosticar conectividad.

---

### Parte 1: Configuración de Interfaces de Red

1. **Verificar Interfaces**:
   - Lista las interfaces de red disponibles utilizando `ifconfig`.
   - **Solución**:
     ```bash
     ifconfig
     ```
     Identificarás las interfaces `enp0s3` y `lo`.

2. **Modificar Configuración de Red con `ifconfig`**:
   - Cambia temporalmente la dirección IP de la interfaz `enp0s3` a `192.168.1.100` con máscara de subred `255.255.255.0`.
   - **Solución**:
     ```bash
     sudo ifconfig enp0s3 192.168.1.100 netmask 255.255.255.0
     ```

3. **Restaurar Configuración con `ip`**:
   - Usa el comando `ip` para restaurar la dirección IP original (`10.0.2.15`) en la interfaz `enp0s3`.
   - **Solución**:
     ```bash
     sudo ip addr add 10.0.2.15/24 dev enp0s3
     sudo ip addr del 192.168.1.100/24 dev enp0s3
     ```

4. **Configurar Conexiones con `nmcli`**:
   - Lista todas las conexiones configuradas.
   - **Solución**:
     ```bash
     nmcli connection show
     ```
   - Crea una conexión estática llamada `RedEstatica`.
   - **Solución**:
     ```bash
     sudo nmcli connection add type ethernet con-name RedEstatica ifname enp0s3 ipv4.addresses 192.168.2.100/24 gw4 192.168.2.1 ipv4.method manual
     sudo nmcli connection up RedEstatica
     nmcli connection show
     sudo nmcli connection down RedEstatica
     nmcli connection show
     sudo nmcli connection del RedEstatica
     nmcli connection show




     ```

---

### Parte 2: Diagnóstico de Conectividad

1. **Probar Conectividad con `ping`**:
   - Envía 5 paquetes ICMP a la dirección `8.8.8.8`.
   - **Solución**:
     ```bash
     ping -c 5 8.8.8.8
     ```


2. **Verificar Conexiones Activas con `netstat` y `ss`**:
   - Lista todas las conexiones activas.
   - **Solución**:
     ```bash
     netstat -tuln
     ss -tuln
     ```


# Explicación de los Comandos `netstat` y `ss`

## Comando: `netstat -tuln`
`netstat` es una herramienta para mostrar información sobre las conexiones de red y los sockets en uso. La opción `-tuln` significa:
- **`-t`**: Muestra conexiones TCP.
- **`-u`**: Muestra conexiones UDP.
- **`-l`**: Filtra solo los sockets en estado de "escucha" (`LISTEN`).
- **`-n`**: Muestra las direcciones IP y puertos en formato numérico.

### Salida Interpretada:
- **Proto**: Protocolo (TCP o UDP).
- **Dirección local**: IP y puerto en uso por el sistema local.
- **Dirección remota**: Indica conexiones externas, en este caso `0.0.0.0` significa "todas las direcciones".
- **Estado**: Indica el estado de la conexión (`ESCUCHAR` significa que el puerto está abierto y esperando conexiones).

---

## Comando: `ss -tuln`
`ss` (socket statistics) es una alternativa moderna y más eficiente a `netstat`. La opción `-tuln` tiene el mismo significado que en `netstat`.

### Diferencias Principales:
- **`ss`** es más rápido y preciso, especialmente en sistemas con muchas conexiones.
- **Netid**: Protocolo de red (TCP, UDP, etc.).
- **State**: Estado del socket (`LISTEN` o `UNCONN`).
- **Recv-Q / Send-Q**: Muestran los datos pendientes de recibir o enviar.

### Salida Interpretada:
- La información mostrada es similar a la de `netstat`, pero incluye detalles adicionales como las colas de recepción (`Recv-Q`) y envío (`Send-Q`).

---

### Conclusión:
Ambos comandos te permiten analizar puertos abiertos y servicios que están escuchando conexiones. Usa `netstat` para compatibilidad con sistemas más antiguos y `ss` para mayor velocidad y detalle en sistemas modernos.

---

# Ejercicio 2: Transferencia de Archivos y Conexiones Remotas

## Objetivo
Practicar la transferencia de archivos y el uso de protocolos FTP y SFTP.

---

### Parte 1: Transferencia de Archivos

1. **Sincronización con `rsync`**:
   - Crea un archivo de texto y usa `rsync` para copiarlo al directorio `/tmp`.
   - **Solución**:
     ```bash
     echo "Contenido de prueba" > archivo_local.txt    
     rsync archivo_local.txt /tmp/
     ```

2. **Verificar Copia**:
   - Comprueba que el archivo se encuentra en `/tmp`.
   - **Solución**:
     ```bash
     ls /tmp | cat archivo_local.txt
     ```
3. **Añade contenido al archivo**:
    - **Solución**:
     ```bash
     echo "Contenido de prueba2" >> archivo_local.txt    
     rsync archivo_local.txt /tmp/
     ```
4. **Comprueba que el texto en ambas localizaciones**:
   - **Solución**:
     ```bash
     cat archivo_local.txt

     ls /tmp | cat archivo_local.txt
     ```

---

### Parte 2: Uso de FTP

1. **Instalar un Servidor FTP**:
   - Instala `vsftpd`.
   - **Solución**:
     ```bash
     sudo apt install vsftpd -y
     ```


## Editar la Configuración de `vsftpd`
1. Abre el archivo de configuración del servidor FTP:
   ```bash
   sudo nano /etc/vsftpd.conf
   ```

2. Asegúrate de que las siguientes líneas estén presentes y configuradas como `YES`:
   ```plaintext
   write_enable=YES
   local_enable=YES
   ```

   - **`write_enable=YES`**: Permite operaciones de escritura en el servidor FTP.
   - **`local_enable=YES`**: Permite que los usuarios locales del sistema se conecten al servidor FTP.

3. Guarda los cambios en el archivo y cierra el editor (Ctrl + O para guardar, Ctrl + X para salir).

---

## Reiniciar el Servidor FTP
Después de realizar los cambios, reinicia el servicio FTP para aplicar la nueva configuración:
```bash
sudo systemctl restart vsftpd
```

---

## Reintentar la Transferencia de Archivos
1. Vuelve a conectarte al servidor FTP desde tu cliente:
   ```bash
   ftp localhost
   ```

2. Intenta subir un archivo nuevamente:
   ```ftp
   put archivo_local.txt
   ```

3. **Verificar Transferencia**:
   - **Solución**:
     ```bash
     ls /srv/ftp | grep archivo_local.txt
     ```

---

### Parte 3: Transferencia Segura con SFTP

1. **Probar SFTP**:
   - Conéctate al servidor SSH en localhost usando SFTP.
   - **Solución**:
     ```bash
     sftp revuelta@localhost
     ```
   - Sube un archivo nuevo llamado `archivo_sftp.txt`:
     ```sftp
     put archivo_sftp.txt /tmp/
     ```

2. **Verificar Transferencia**:
   - **Solución**:
     ```bash
     ls /tmp | grep archivo_sftp.txt
     ```

---
