# **Unidad Didáctica 3: Redes en Linux. TCP/IP. Modelo OSI**

## **3.1. Conceptos Básicos de Redes en Unix/Linux**

### Definición de Redes y su Importancia en Sistemas Operativos
Una **red** se define como un conjunto de dispositivos interconectados que comparten recursos e información. En el contexto de Unix/Linux, la administración de redes es fundamental, ya que la mayoría de los servicios y aplicaciones requieren conectividad de red para funcionar adecuadamente. Las redes permiten la comunicación entre servidores y clientes, facilitando la transferencia de datos y la colaboración entre dispositivos distribuidos.

### Componentes Principales de una Red
- **Dispositivos de Red**: Incluyen servidores, clientes, routers, switches y puntos de acceso, entre otros.
- **Medios de Transmisión**: Pueden ser cables (cobre, fibra óptica) o medios inalámbricos (Wi-Fi, Bluetooth).
- **Protocolos de Comunicación**: Reglas que rigen el intercambio de datos, como TCP/IP, UDP, HTTP, SSH, etc.
- **Servicios de Red**: Aplicaciones que permiten la transmisión de información, como DNS, DHCP y FTP.

### Introducción a las Interfaces de Red en Unix/Linux
En Unix/Linux, las **interfaces de red** son puntos de conexión entre el sistema operativo y la red física. Cada interfaz tiene un nombre único (por ejemplo, `eth0`, `wlan0`, `lo`), una dirección IP y una máscara de red. Las interfaces pueden ser configuradas manualmente o mediante un sistema de administración dinámico como **NetworkManager**.

## **3.2. Protocolo TCP/IP**

### Estructura y Funcionamiento del Modelo TCP/IP
El modelo **TCP/IP** (Transmission Control Protocol/Internet Protocol) es un conjunto de protocolos diseñados para permitir la comunicación entre computadoras a través de redes locales e internet. Se organiza en 4 capas, cada una con una función específica para garantizar la correcta transmisión de datos.

### Capas del Modelo TCP/IP y sus Funciones
1. **Capa de Acceso a la Red**: Interactúa con el hardware de la red (cables, interfaces, switches).
2. **Capa de Internet (IP)**: Encargada de la transmisión de paquetes y el enrutamiento a través de múltiples redes.
3. **Capa de Transporte (TCP/UDP)**: Asegura la comunicación punto a punto y la transferencia de datos fiable o no fiable.
4. **Capa de Aplicación**: Proporciona servicios de red a las aplicaciones del usuario (HTTP, FTP, SSH).

#### Principales Protocolos TCP/IP en Linux
- **Capa de Red (IP)**: Protocolo IP (Internet Protocol), responsable de la fragmentación y el direccionamiento de paquetes.
- **Capa de Transporte**: 
  - **TCP (Transmission Control Protocol)**: Protocolo orientado a la conexión, garantiza la entrega de los paquetes.
  - **UDP (User Datagram Protocol)**: Protocolo sin conexión, más rápido, pero sin garantías de entrega.
- **Capa de Aplicación**: Protocolos como HTTP (web), FTP (transferencia de archivos), SSH (conexión remota), SMTP (correo electrónico).

### Configuración y Gestión de Direcciones IP en Linux
En Linux, las direcciones IP pueden configurarse manualmente o mediante un servidor DHCP. Los comandos principales para la gestión de IP incluyen:

- **`ifconfig`**: Herramienta clásica para la configuración de interfaces de red.
- **`ip`**: Comando más moderno y versátil que reemplaza `ifconfig`.
- **`nmcli`**: Comando para gestionar configuraciones de red usando NetworkManager.

## **3.3. Modelo OSI**

### Explicación del Modelo de Referencia OSI
El modelo **OSI** (Open Systems Interconnection) es un modelo conceptual de 7 capas que describe cómo se comunican los sistemas de red. Cada capa del modelo OSI define una función específica en el proceso de comunicación, desde la capa física hasta la capa de aplicación.

### Comparación entre el Modelo OSI y el Modelo TCP/IP
Aunque el modelo OSI es más detallado, el modelo TCP/IP se utiliza más en la práctica. El modelo OSI se usa como referencia teórica y se centra en los diferentes niveles de comunicación. El modelo TCP/IP, en cambio, es más práctico y se implementa directamente en las redes.

### Las Siete Capas del Modelo OSI y sus Funciones
1. **Capa Física**: Define las características eléctricas y físicas del hardware (bits, cables, conectores).
2. **Capa de Enlace de Datos**: Asegura la transferencia de datos sin errores entre nodos (MAC, switches).
3. **Capa de Red**: Se encarga del direccionamiento y enrutamiento de paquetes (IP, routers).
4. **Capa de Transporte**: Controla la transferencia de datos entre sistemas (TCP, UDP).
5. **Capa de Sesión**: Establece, gestiona y termina conexiones (RPC, sockets).
6. **Capa de Presentación**: Traduce datos entre el formato de la red y el formato de la aplicación (codificación, cifrado).
7. **Capa de Aplicación**: Proporciona servicios de red a las aplicaciones del usuario (HTTP, FTP, SMTP).

### Ejemplos de Protocolos Asociados a Cada Capa
- **Capa Física**: Ethernet, DSL.
- **Capa de Enlace de Datos**: ARP, PPP.
- **Capa de Red**: IP, ICMP.
- **Capa de Transporte**: TCP, UDP.
- **Capa de Sesión**: PPTP, L2TP.
- **Capa de Presentación**: SSL/TLS.
- **Capa de Aplicación**: DNS, FTP, HTTP, SMTP.

## **3.4. Configuración de Redes en Linux**

### Configuración Básica de Red en Linux
- **`ifconfig`**: Configura interfaces de red, asigna IP y máscara de subred.
- **`ip`**: Sustituto de `ifconfig`, más flexible. Permite gestionar rutas y reglas.
- **`nmcli`**: Interfaz de línea de comandos para NetworkManager, gestiona conexiones de red.

### Asignación de IP Estáticas y Dinámicas (DHCP)
- **IP Estática**: Se asigna manualmente en la configuración de la interfaz.
- **IP Dinámica**: Asignada automáticamente por un servidor DHCP.

## **3.5. Herramientas de Diagnóstico de Redes**

### Diagnóstico y Solución de Problemas de Red en Linux
- **`ping`**: Comprueba la conectividad con otro dispositivo.
- **`traceroute` y `tracepath`**: Muestra la ruta seguida por los paquetes.
- **`netstat` y `ss`**: Monitorea conexiones activas y puertos en uso.

## **3.6. Transferencia de Archivos en Red**

### Herramientas para la Transferencia de Archivos en Linux
- **`scp`**: Copia archivos de forma segura entre hosts.
- **`rsync`**: Sincroniza archivos y directorios de manera eficiente.
- **`ftp`**: Protocolo de transferencia de archivos. Se usa para conexiones no seguras.

### Configuración Básica de un Servidor FTP en Linux
- Instalación de un servicio FTP (`vsftpd` o `proftpd`).
- Configuración de usuarios y permisos.
- Gestión de seguridad y acceso.

## **3.7. Conexiones Remotas**

### Conexión Remota y Administración de Sistemas
- **`ssh`**: Protocolo para conexiones remotas seguras, utiliza cifrado para proteger la sesión.
- **`telnet`**: Protocolo básico para acceder a dispositivos de red, pero sin cifrado.
- **`sftp`**: Protocolo basado en SSH para transferencias seguras de archivos.

Estos apuntes proporcionan una guía técnica detallada para la comprensión y la configuración de redes en sistemas Linux, cubriendo desde la teoría de protocolos hasta la implementación práctica.