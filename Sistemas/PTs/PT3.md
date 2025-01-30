# Prueba Técnica Práctica 3 (PT3)

## [Enlace GitHub](https://classroom.github.com/a/g2NUC3SL)

## Duración: 2 horas

### Objetivo
Evaluar las habilidades prácticas en:
- Configuración de redes en Linux.
- Diagnóstico de conectividad y análisis de servicios.
- Gestión de usuarios y permisos.
- Transferencia de archivos y conexiones remotas.

---

## Escenario
Eres el administrador de sistemas de una pequeña empresa que necesita garantizar la conectividad, configurar usuarios y transferir archivos entre sistemas. Completa las tareas descritas a continuación para demostrar tus habilidades.

---

### Parte 1: Configuración de Redes

#### Tareas

1. **Configuración de IP Estática:**
   - Configura la interfaz de red `enp0s3` con la IP `192.168.50.100`, máscara de subred `255.255.255.0`, y puerta de enlace `192.168.50.1`.
   - Verifica la configuración utilizando `ip addr show`.

2. **Pruebas de Conectividad:**
   - Realiza un ping hacia la IP de la puerta de enlace (`192.168.50.1`) para comprobar la conectividad.
   - Usa `traceroute` para verificar la ruta hacia `8.8.8.8`.

3. **Listar Servicios Activos:**
   - Usa `ss` para listar los servicios que están escuchando en los puertos TCP y UDP.

---

### Parte 2: Gestión de Usuarios

#### Tareas

1. **Crear Usuarios:**
   - Crea dos usuarios: `admin1` y `user1`.
   - Asigna al usuario `admin1` permisos administrativos (grupo `sudo`).

2. **Configurar Permisos de Carpeta Compartida:**
   - Crea un directorio compartido en `/home/compartido` y asigna permisos para que ambos usuarios puedan leer y escribir en este.

---

### Parte 3: Conexiones Remotas y Transferencia de Archivos

#### Tareas

1. **Configurar SSH:**
   - Instala y habilita el servicio SSH en el sistema.
   - Genera un par de claves SSH para `user1` y configura el acceso sin contraseña hacia `admin1`.

2. **Transferencia de Archivos:**
   - Desde la cuenta de `user1`, crea un archivo llamado `informe.txt` con contenido de prueba y transfiérelo al directorio personal de `admin1` usando `scp`.
   - Usa `rsync` para sincronizar el archivo `informe.txt` al directorio compartido `/home/compartido`.

---

### Parte 4: Configuración de un Servidor FTP

#### Tareas

1. **Instalar y Configurar FTP:**
   - Instala un servidor FTP como `vsftpd`.
   - Configura el servidor para que permita accesos anónimos únicamente en modo lectura.
   - Asegúrate de que los accesos anónimos estén limitados a un directorio específico, por ejemplo `/srv/ftp`,
   editando el archivo de configuración `/etc/vsftpd.conf` y activa las siguientes opciones:
     ```plaintext
     anonymous_enable=YES
     write_enable=NO
     anon_root=/srv/ftp
     ```
   - Reinicia el servicio para aplicar los cambios:
     ```bash
     sudo systemctl restart vsftpd
     ```

2. **Transferir Archivo con FTP:**
   - Sube un archivo llamado `catalogo.txt` al servidor FTP como usuario anónimo y verifica que pueda descargarse desde el directorio configurado.
   - Comandos sugeridos:
     ```bash
     ftp localhost
     put y get
     ```

