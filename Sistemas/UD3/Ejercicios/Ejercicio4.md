
# Ejercicio Práctico 4: Configuración de Red en Linux

## Introducción
En este ejercicio aprenderás a configurar manualmente los elementos básicos de una red en un sistema Linux: dirección IP, puerta de enlace, máscara de subred y servidores DNS. Antes de comenzar con las actividades prácticas, repasaremos qué son y para qué sirven estos conceptos.

---

## Conceptos Básicos

### Dirección IP
- Una dirección IP (Internet Protocol) identifica de forma única un dispositivo en una red. Existen dos tipos de direcciones IP:
  - **IPv4:** Formato más común, representado como cuatro números separados por puntos (por ejemplo, `192.168.1.100`).
  - **IPv6:** Una versión más nueva, diseñada para soportar más dispositivos, que utiliza un formato hexadecimal (por ejemplo, `2001:0db8:85a3:0000:0000:8a2e:0370:7334`).
- Cada dispositivo en la red debe tener una dirección IP única.

### Máscara de Subred
- La máscara de subred define qué parte de una dirección IP corresponde a la red y qué parte al dispositivo (host).
- Ejemplo: La máscara `/24` (equivalente a `255.255.255.0`) indica que los primeros 24 bits de la dirección IP identifican la red, dejando los últimos 8 bits para los dispositivos en esa red.

### Puerta de Enlace (Gateway)
- La puerta de enlace es el dispositivo que conecta tu red local con otras redes, como Internet. 
- En la mayoría de los casos, es el router de tu red doméstica o empresarial.

### DNS (Sistema de Nombres de Dominio)
- El servidor DNS traduce nombres de dominio (como `www.google.com`) a direcciones IP que las computadoras pueden entender (como `142.250.74.78`).
- Sin un servidor DNS configurado, no podrías acceder a sitios web escribiendo sus nombres, solo sus direcciones IP.

---

## Ejercicio Práctico: Configuración de Red

### 1. Configuración de la Dirección IP, Máscara y Puerta de Enlace
- Usa el comando `ip` para configurar una dirección IP estática:
  ```bash
  sudo ip addr add 192.168.1.100/24 dev enp0s3
  ```
  > Esto asigna la dirección IP `192.168.1.100` con una máscara `/24` a la interfaz de red `enp0s3`.
- Configura la puerta de enlace predeterminada:
  ```bash
  sudo ip route add default via 192.168.1.1
  ```

### 2. Configuración del Servidor DNS
- Modifica el archivo `/etc/resolv.conf` para usar el servidor DNS de Google:
  ```bash
  sudo nano /etc/resolv.conf
  ```
  - Añade la siguiente línea al archivo:
    ```
    nameserver 8.8.8.8
    ```
  - Guarda y cierra el archivo.

### 3. Verificación de la Configuración
- Comprueba la dirección IP y la máscara de subred con el comando:
  ```bash
  ip addr
  ```
- Verifica la puerta de enlace configurada con:
  ```bash
  ip route
  ```
- Confirma que el servidor DNS está configurado correctamente revisando el contenido del archivo `/etc/resolv.conf`:
  ```bash
  cat /etc/resolv.conf
  ```

### 4. Pruebas de Conectividad
- Verifica que puedes alcanzar la puerta de enlace:
  ```bash
  ping -c 4 192.168.1.1
  ```
- Comprueba que puedes alcanzar una dirección IP pública:
  ```bash
  ping -c 4 8.8.8.8
  ```
- Verifica que el servidor DNS está funcionando correctamente resolviendo un nombre de dominio:
  ```bash
  ping -c 4 www.google.com
  ```

### 5. Solución de Problemas
- Si no puedes hacer ping a la puerta de enlace, revisa si configuraste correctamente la dirección IP y la máscara.
- Si no puedes hacer ping a una dirección pública, verifica si configuraste correctamente la puerta de enlace.
- Si no puedes hacer ping a un nombre de dominio, asegúrate de que el servidor DNS esté configurado correctamente en `/etc/resolv.conf`.

### 6. Opcional: Script de Configuración
- Escribe un script bash que configure automáticamente la red:
  ```bash
  #!/bin/bash
  sudo ip addr add 192.168.1.100/24 dev enp0s3
  sudo ip route add default via 192.168.1.1
  echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
  echo "Configuración de red completada."
  ```

---

## Materiales Entregables
1. Capturas de pantalla de los comandos utilizados y sus resultados.
2. Archivo de texto con los comandos realizados.
3. (Opcional) Script bash con los pasos de configuración.

---

## Notas Adicionales
- Este ejercicio puede adaptarse a diferentes interfaces de red (como `wlan0` para redes inalámbricas).
- Recuerda que los cambios realizados con los comandos `ip` no son persistentes después de reiniciar el sistema. Puedes investigar cómo hacerlos permanentes en tu distribución.

¡Buena suerte configurando tu red en Linux!
