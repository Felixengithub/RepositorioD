## Creación y Configuración de Usuarios

A continuación, se explican los pasos para crear dos usuarios, **revuelta** y **hormiguero**, y configurarlos para que ambos tengan permisos de administrador (`sudoers`).

### Paso 1: Crear los Usuarios
1. Inicia sesión como usuario con permisos administrativos (por ejemplo, `root` o un usuario que ya esté en el grupo `sudo`).
2. Crea los usuarios **revuelta** y **hormiguero** utilizando el comando `adduser`:
   ```bash
   sudo adduser revuelta
   sudo adduser hormiguero
   ```

   - Durante la creación, el sistema solicitará información como la contraseña y datos del usuario. Solo la contraseña es obligatoria.

---

### Paso 2: Agregar Usuarios al Grupo Sudo
1. Agrega los usuarios **revuelta** y **hormiguero** al grupo `sudo` para que puedan ejecutar comandos administrativos:
   ```bash
   sudo usermod -aG sudo revuelta
   sudo usermod -aG sudo hormiguero
   ```

2. Verifica que ambos usuarios están en el grupo `sudo` con el comando:
   ```bash
   groups revuelta
   groups hormiguero
   ```

   - El comando debería mostrar `sudo` como uno de los grupos a los que pertenecen los usuarios.

---

### Paso 3: Probar Acceso de Sudo
1. Inicia sesión como **revuelta**:
   ```bash
   su - revuelta
   ```
2. Prueba ejecutar un comando con `sudo`:
   ```bash
   sudo whoami
   ```
   - Si el comando devuelve `root`, significa que **revuelta** tiene permisos sudo.

3. Repite los pasos anteriores para el usuario **hormiguero**.

¡Con esto, ambos usuarios estarán configurados y listos para usar comandos administrativos!

---

## Pasos para Instalar y Configurar el Servidor SSH

Si el servicio SSH no está instalado o configurado, sigue los pasos a continuación para habilitarlo en tu sistema Linux.

### Paso 1: Actualizar los Repositorios
1. Asegúrate de que los repositorios de paquetes estén actualizados ejecutando:
   ```bash
   sudo apt update
   ```

---

### Paso 2: Instalar el Servidor SSH
1. Instala el servidor SSH utilizando el siguiente comando:
   ```bash
   sudo apt install openssh-server -y
   ```

---

### Paso 3: Verificar la Instalación
1. Comprueba el estado del servicio SSH:
   ```bash
   sudo systemctl status ssh
   ```
   - Deberías ver algo como `Active: active (running)`. Si el servicio no está activo, inícialo con:
     ```bash
     sudo systemctl start ssh
     ```

---

### Paso 4: Habilitar el Servicio SSH
1. Asegúrate de que el servicio SSH se inicie automáticamente con el sistema operativo:
   ```bash
   sudo systemctl enable ssh
   ```

---

### Paso 5: Probar la Conexión SSH
1. Intenta conectarte al servidor SSH utilizando el comando:
   ```bash
   ssh revuelta@localhost
   ```
   - Si todo está configurado correctamente, deberías poder acceder sin problemas.
   - Sal con 
   ```bash
   exit
   ```

---

Con estos pasos, tendrás el servidor SSH instalado y configurado correctamente en tu máquina virtual.
# Ejercicio Práctico: Conexión entre Usuarios en la Misma Máquina Virtual

## Objetivo
Practicar la conexión entre dos usuarios (**revuelta** y **hormiguero**) en la misma máquina virtual Linux utilizando `ssh`.

---

## Requisitos Previos
- Una máquina virtual Linux con los usuarios **revuelta** y **hormiguero** previamente creados.
- Ambos usuarios deben tener contraseñas configuradas.
- Conocimientos básicos de comandos Linux y del protocolo SSH.

---

## Escenario
Tienes dos usuarios en la misma máquina virtual:
1. **revuelta**: Administrador del sistema.
2. **hormiguero**: Usuario regular.

El objetivo es que **hormiguero** pueda conectarse a **revuelta** mediante `ssh` y transferir archivos al directorio personal de **revuelta**.

---

## Tareas a Realizar

### Paso 1: Configuración Inicial de Permisos
1. Inicia sesión como **revuelta** y crea un directorio llamado `transferencias` en su directorio personal.
   ```bash
   mkdir /home/revuelta/transferencias
   ```
2. Cambia los permisos del directorio para permitir que **hormiguero** pueda escribir en él:
   ```bash
   chmod 770 /home/revuelta/transferencias
   ```

---

### Paso 2: Configurar Claves SSH para Conexión Sin Contraseña
1. Inicia sesión como **hormiguero** y genera un par de claves SSH:
   ```bash
   ssh-keygen -t rsa -b 2048
   ```
   - Guarda las claves en el directorio predeterminado.
   - No configures una contraseña para la clave.

2. Copia la clave pública generada en **hormiguero** al archivo `~/.ssh/authorized_keys` de **revuelta**:
   ```bash
   ssh-copy-id revuelta@localhost
   ```

3. Verifica que **hormiguero** puede conectarse a **revuelta** sin necesidad de ingresar una contraseña:
   ```bash
   ssh revuelta@localhost
   ```

---

### Paso 3: Transferencia de Archivos
1. Desde la sesión de **hormiguero**, crea un archivo llamado `archivo_hormiguero.txt` con contenido cualquiera.
   ```bash
   echo "Este archivo pertenece a hormiguero" > archivo_hormiguero.txt
   ```

2. Utiliza `scp` para transferir este archivo al directorio `transferencias` de **revuelta**:
   ```bash
   scp archivo_hormiguero.txt revuelta@localhost:/home/revuelta/transferencias
   ```

3. Verifica que el archivo se ha transferido correctamente iniciando sesión como **revuelta** y listando el contenido del directorio:
   ```bash
   ls /home/revuelta/transferencias
   ```

---

### Paso 4: Comunicación Directa
1. Desde **hormiguero**, realiza una conexión remota a **revuelta** con `ssh` y crea un nuevo archivo en el directorio `transferencias`:
   ```bash
   echo "Hola desde hormiguero" > /home/revuelta/transferencias/hola_desde_hormiguero.txt
   ```

2. Inicia sesión como **revuelta** y verifica el contenido del archivo `hola_desde_hormiguero.txt`.


