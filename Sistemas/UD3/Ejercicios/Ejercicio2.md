
# Explicación de TCP/IP con Ejemplo Práctico

El protocolo TCP/IP (Transmission Control Protocol/Internet Protocol) es la base de la comunicación en redes modernas, incluyendo internet. Permite que los dispositivos en diferentes redes se conecten entre sí y compartan datos de manera eficiente y fiable. Este modelo está compuesto por cuatro capas principales, cada una con responsabilidades específicas en el proceso de transmisión de datos.

## Capas del Modelo TCP/IP y Sus Funciones

1. **Capa de Acceso a la Red**: Gestiona la conexión física entre dispositivos y el medio de transmisión (cables, Wi-Fi, etc.).
2. **Capa de Internet**: Utiliza el protocolo IP para enviar paquetes de datos a través de la red, incluyendo el direccionamiento y enrutamiento de datos.
3. **Capa de Transporte**: Utiliza los protocolos TCP o UDP para gestionar la transmisión de datos entre dispositivos.
    - **TCP**: Protocolo orientado a la conexión, asegura que los paquetes lleguen de manera ordenada y completa.
    - **UDP**: Protocolo sin conexión, más rápido pero sin garantías de entrega o orden.
4. **Capa de Aplicación**: Proporciona servicios de red a las aplicaciones, como HTTP para navegación web o FTP para transferencia de archivos.

## Ejemplo Práctico: Navegar en una Página Web Usando TCP/IP

Cuando ingresas una URL en el navegador, como `http://www.example.com`, el proceso sigue estos pasos:

1. **Resolución de Dirección IP**:
   - La capa de aplicación en tu dispositivo utiliza el **DNS** (Domain Name System) para obtener la dirección IP de `www.example.com`.
   - Supongamos que la dirección IP es `93.184.216.34`.

2. **Capa de Transporte (TCP)**:
   - El navegador utiliza **TCP** para establecer una conexión con el servidor `93.184.216.34`.
   - Se inicia el **handshake de tres pasos de TCP**:
     - El navegador envía un paquete **SYN** (synchronize) al servidor para iniciar la conexión.
     - El servidor responde con un paquete **SYN-ACK** (synchronize-acknowledge) confirmando la solicitud.
     - El navegador envía un paquete **ACK** (acknowledge) de confirmación, completando la conexión.

3. **Capa de Internet (IP)**:
   - Una vez establecida la conexión TCP, los datos (en este caso, la solicitud HTTP) se dividen en **paquetes IP** y se etiquetan con la dirección IP de origen y destino.
   - Los paquetes viajan a través de routers y redes hasta llegar al servidor en `93.184.216.34`.

4. **Capa de Aplicación (HTTP)**:
   - La capa de aplicación en el navegador envía una solicitud HTTP al servidor, como `GET /index.html`.
   - El servidor recibe la solicitud y responde con el contenido de la página `index.html`.

5. **Recepción y Ensamblaje de Paquetes**:
   - Los paquetes de respuesta HTTP se envían de vuelta al navegador en la capa de transporte, que los ensambla en el orden correcto.
   - TCP asegura que todos los paquetes se reciban y ensamblen correctamente antes de que el navegador muestre la página completa.

## Ejemplo en Comandos

### Verificación de Conexión con `ping` (ICMP)

Para comprobar si se puede llegar a un servidor, puedes usar el comando `ping`, que utiliza el **protocolo ICMP** (Internet Control Message Protocol), parte de la capa de Internet.

```bash
ping www.example.com
```

### Verificación de Conexión TCP con `telnet`

Para comprobar una conexión TCP en un puerto específico (como el puerto 80 para HTTP):

```bash
telnet www.example.com 80
```

### Ver Conexiones Activas con `ss`

Para ver las conexiones TCP y UDP activas en tu sistema:

```bash
ss -tuln
```

