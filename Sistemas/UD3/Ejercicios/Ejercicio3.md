# Ejercicios Prácticos: Configuración y Diagnóstico de Redes en Linux

## 1. Configuración Básica de Red

### Ejercicio 1: Uso de `ifconfig`
1. Muestra todas las interfaces de red disponibles:
   ```bash
   ifconfig
   ```
2. Configura la dirección IP `192.168.1.100` y la máscara de subred `255.255.255.0` en `eth0`:
   ```bash
   sudo ifconfig eth0 192.168.1.100 netmask 255.255.255.0
   ```
3. Verifica la configuración:
   ```bash
   ifconfig eth0
   ```

### Ejercicio 2: Uso de `ip`
1. Muestra la configuración de todas las interfaces de red:
   ```bash
   ip addr show
   ```
2. Asigna la dirección IP `10.0.0.2/24` a la interfaz `eth0`:
   ```bash
   sudo ip addr add 10.0.0.2/24 dev eth0
   ```
3. Elimina la dirección IP asignada:
   ```bash
   sudo ip addr del 10.0.0.2/24 dev eth0
   ```

### Ejercicio 3: Uso de `nmcli`
1. Muestra todas las conexiones:
   ```bash
   nmcli connection show
   ```
2. Crea una nueva conexión con IP estática:
   ```bash
   nmcli connection add type ethernet ifname eth0 con-name StaticNet ipv4.addresses 192.168.2.10/24 ipv4.gateway 192.168.2.1

   ```
3. Activa la conexión:
   ```bash
   nmcli connection up StaticNet
   ```
4. Desactiva y elimina la conexión:
   ```bash
   nmcli connection down StaticNet
   nmcli connection delete StaticNet
   ```

---

## 2. Asignación de IP Estáticas y Dinámicas (DHCP)

### Ejercicio 4: Configuración de IP Estática
1. Configura manualmente una IP estática:
   - Edita el archivo de configuración de red (dependiendo de la distribución):
     ```bash
     sudo nano /etc/network/interfaces
     ```
   - Agrega la configuración:
     ```plaintext
     iface ens33 inet static
         address 192.168.3.20
         netmask 255.255.255.0
         gateway 192.168.3.1
     ```
   - Guarda y reinicia la red:
     ```bash
     sudo systemctl restart NetworkManager

     o 
     sudo systemctl restart systemd-networkd
     ```

### Ejercicio 5: Configuración de IP Dinámica (DHCP)
1. Configura la interfaz para usar DHCP:
   - Edita el archivo de configuración:
     ```bash
     sudo nano /etc/network/interfaces
     ```
   - Agrega o ajusta la configuración:
     ```plaintext
     iface ens33 inet dhcp
     ```
   - Guarda y reinicia la red:
     ```bash
     sudo systemctl restart NetworkManager

     o 
     
     sudo systemctl restart systemd-networkd
     ```

---

## 3. Herramientas de Diagnóstico de Redes

### Ejercicio 6: Uso de `ping`
1. Comprueba la conectividad con `8.8.8.8`:
   ```bash
   ping 8.8.8.8
   ```
2. Realiza un ping y guarda los resultados en segundo:
   ```bash
   ping google.com > ping_result.txt &
   ```

### Ejercicio 7: Uso de `traceroute` y `tracepath`
1. Usa `traceroute`:
   ```bash
   traceroute google.com
   ```
2. Usa `tracepath`:
   ```bash
   tracepath google.com
   ```

### Ejercicio 8: Uso de `netstat` y `ss`
1. Lista todas las conexiones activas:
   ```bash
   netstat -tuln
   ```
2. Usa `ss` para mostrar conexiones TCP activas en el puerto 22:
   ```bash
   ss -t state established '( sport = :22 )'
   ```
3. Guarda la salida de `ss`:
   ```bash
   ss > active_connections.txt
   ```


---

### Notas:
- **Privilegios de Administrador:** Algunos comandos requieren permisos de administrador. Usa `sudo` si es necesario.
