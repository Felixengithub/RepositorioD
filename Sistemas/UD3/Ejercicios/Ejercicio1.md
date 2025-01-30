
# Ejercicio Práctico: Redes en Linux - TCP/IP y el Modelo OSI

En este ejercicio, pondrás en práctica los conceptos básicos de redes en sistemas Unix/Linux, aprendiendo a configurar y administrar interfaces de red, así como a gestionar direcciones IP utilizando comandos comunes en Linux. 

## Objetivo
1. Comprender los conceptos de redes en Unix/Linux y la estructura del modelo TCP/IP.
2. Configurar interfaces de red y gestionar direcciones IP en Linux.
3. Practicar el uso de comandos fundamentales para la administración de redes.

---

## Instrucciones

### Paso 1: Verificación de la Configuración de Red

1. **Lista las interfaces de red** disponibles en tu sistema utilizando el comando `ip`.

    ```bash
    ip link show
    ```

2. **Observa las configuraciones de red** detalladas de cada interfaz utilizando `ip addr show`. Anota el nombre de la interfaz que está activa y su dirección IP.

    ```bash
    ip addr show
    ```

3. Opcionalmente, puedes utilizar el comando `ifconfig` si está disponible en tu sistema, aunque es un comando más antiguo.

    ```bash
    ifconfig
    ```

### Paso 2: Configuración Manual de una Dirección IP

1. **Asignación manual de dirección IP:** Cambia la dirección IP de una interfaz de red. Elige una interfaz activa (por ejemplo, `eth0` o `wlan0`) y asigna una dirección IP en el rango de red de tu elección.

    ```bash
    sudo ip addr add 192.168.1.100/24 dev eth0
    ```

   - Sustituye `eth0` con el nombre de tu interfaz activa.
   - Verifica la configuración con `ip addr show`.

2. **Eliminación de la dirección IP:** Restaura la configuración eliminando la dirección IP asignada.

    ```bash
    sudo ip addr del 192.168.1.100/24 dev eth0
    ```

3. **Configura la dirección IP usando `nmcli`:** Si tienes `NetworkManager`, utiliza `nmcli` para cambiar la dirección IP de la interfaz. (Sustituye `eth0` por el nombre de la interfaz).

    ```bash
    sudo nmcli con mod eth0 ipv4.addresses 192.168.1.101/24
    sudo nmcli con up eth0
    ```

### Paso 3: Verificación de Conectividad de Red

1. **Prueba la conectividad** con otros dispositivos en la red utilizando el comando `ping`. Envía paquetes a una dirección IP dentro de tu red (por ejemplo, tu router).

    ```bash
    ping -c 4 192.168.1.1
    ```

   - El comando `-c 4` indica que se enviarán 4 paquetes.

2. **Observa los resultados** y comprueba que estás recibiendo respuestas.

### Paso 4: Conocimiento del Modelo TCP/IP en Linux

1. **Identifica los servicios y protocolos de red** activos en tu sistema utilizando el comando `ss` para listar las conexiones activas y los servicios que usan TCP/IP.

    ```bash
    ss -tuln
    ```

2. **Analiza las conexiones** abiertas y los puertos en uso, observando los protocolos TCP y UDP en tu sistema. Nota cuáles son utilizados para servicios específicos, como HTTP, SSH o FTP.

### Paso 5: Gestión Dinámica de IP con DHCP

1. **Configura una interfaz de red** para que obtenga una dirección IP automáticamente mediante DHCP. Utiliza el siguiente comando para solicitar una IP mediante DHCP en la interfaz `eth0`.

    ```bash
    sudo dhclient eth0
    ```

2. **Verifica la dirección IP asignada** y anota la dirección IP obtenida.

---
