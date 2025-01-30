
# Ejercicio Práctico 5: Transferencia de Archivos y Conexiones Remotas en Linux

## Objetivo
Aprender y practicar el uso de herramientas de transferencia de archivos y conexiones remotas en Linux: `scp`, `rsync`, `ftp`, `ssh` y `sftp`.

---

## Parte 1: `scp` - Transferencia Segura de Archivos
### Tarea
1. Copia un archivo desde tu máquina local a un servidor remoto.
2. Copia un archivo desde el servidor remoto a tu máquina local.
3. Copia un directorio completo a un servidor remoto, preservando su estructura.

### Ejemplos
- **Copia de archivo a un servidor remoto**:
  ```bash
  scp /home/usuario/documento.txt user@192.168.1.100:/home/user/destino
  ```
- **Copia de archivo desde un servidor remoto**:
  ```bash
  scp user@192.168.1.100:/home/user/documento.txt /home/usuario/destino
  ```
- **Copia de un directorio completo**:
  ```bash
  scp -r /home/usuario/proyecto user@192.168.1.100:/home/user/destino
  ```

---

## Parte 2: `rsync` - Sincronización Eficiente de Archivos
### Tarea
1. Sincroniza un directorio local con un servidor remoto.
2. Sincroniza un servidor remoto con un directorio local.
3. Realiza una sincronización incluyendo solo ciertos tipos de archivos (por ejemplo, `.txt`).

### Ejemplos
- **Sincronizar un directorio local con un servidor remoto**:
  ```bash
  rsync -avz /home/usuario/proyecto user@192.168.1.100:/home/user/destino
  ```
- **Sincronizar un servidor remoto con un directorio local**:
  ```bash
  rsync -avz user@192.168.1.100:/home/user/proyecto /home/usuario/destino
  ```
- **Sincronizar archivos específicos**:
  ```bash
  rsync -avz --include="*.txt" --exclude="*" /home/usuario/proyecto user@192.168.1.100:/home/user/destino
  ```

---

## Parte 3: `ftp` - Transferencia de Archivos (No Segura)
### Tarea
1. Conéctate a un servidor FTP.
2. Lista los archivos disponibles en el servidor.
3. Descarga un archivo desde el servidor.
4. Sube un archivo al servidor.

### Ejemplos
1. **Conexión al servidor FTP**:
   ```bash
   ftp 192.168.1.100
   ```
2. **Lista de archivos**:
   ```bash
   ls
   ```
3. **Descarga de archivo**:
   ```bash
   get documento.txt
   ```
4. **Subida de archivo**:
   ```bash
   put nuevo_documento.txt
   ```

---

## Parte 4: `ssh` - Conexión Remota Segura
### Tarea
1. Conéctate a un servidor remoto usando `ssh`.
2. Ejecuta comandos en el servidor remoto.
3. Configura un alias en tu archivo `~/.ssh/config` para simplificar la conexión.

### Ejemplos
- **Conectar a un servidor remoto**:
  ```bash
  ssh user@192.168.1.100
  ```
- **Configurar un alias en `~/.ssh/config`**:
  ```text
  Host servidor_remoto
      HostName 192.168.1.100
      User user
      Port 22
  ```

---

## Parte 5: `sftp` - Transferencia Segura de Archivos
### Tarea
1. Conéctate a un servidor remoto usando `sftp`.
2. Lista los archivos disponibles en el servidor.
3. Descarga un archivo desde el servidor.
4. Sube un archivo al servidor.

### Ejemplos
- **Conexión al servidor remoto**:
  ```bash
  sftp user@192.168.1.100
  ```
- **Lista de archivos**:
  ```bash
  ls
  ```
- **Descarga de archivo**:
  ```bash
  get documento.txt
  ```
- **Subida de archivo**:
  ```bash
  put nuevo_documento.txt
  ```

---

## Parte 6: Configuración de un Servidor FTP Básico
### Tarea
1. Instala y configura un servidor FTP (por ejemplo, `vsftpd`).
2. Crea un usuario dedicado para las transferencias FTP.
3. Configura los permisos para el usuario.

### Ejemplos
1. **Instalar vsftpd**:
   ```bash
   sudo apt update
   sudo apt install vsftpd
   ```
2. **Configurar el archivo `/etc/vsftpd.conf`** (activa permisos básicos).
3. **Reiniciar el servicio**:
   ```bash
   sudo systemctl restart vsftpd
   ```

---

## Notas
1. Asegúrate de tener permisos adecuados para realizar transferencias y configuraciones.
2. Cambia los nombres de usuario y direcciones IP/host por los de tu entorno.
