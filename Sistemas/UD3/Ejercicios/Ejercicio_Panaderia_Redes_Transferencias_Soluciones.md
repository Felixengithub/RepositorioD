
# Ejercicio: Configuración de Redes y Transferencia de Archivos para una Panadería (Con Soluciones)

## Objetivo
Practicar la configuración de redes y la transferencia de archivos entre sistemas en el contexto de una panadería.

---

## Escenario
La panadería utiliza un sistema para monitorear ventas e inventarios. Se necesita configurar las redes y realizar pruebas de conectividad para garantizar el funcionamiento del sistema.

---

## Tareas a Realizar

### Parte 1: Configuración de Red
1. Configurar la interfaz de red principal con una IP estática:
   ```bash
   sudo ifconfig enp0s3 192.168.1.50 netmask 255.255.255.0
   ```
2. Crear y verificar una conexión llamada `Red_Panaderia`:
   ```bash
   sudo nmcli connection add type ethernet con-name Red_Panaderia ifname enp0s3 ipv4.addresses 192.168.1.50/24 gw4 192.168.1.1 ipv4.method manual
   sudo nmcli connection up Red_Panaderia
   nmcli connection show
   ```

### Parte 2: Diagnóstico de Conectividad
1. Realizar pruebas de conectividad con `ping` hacia el servidor de inventarios:
   ```bash
   ping -c 4 192.168.1.1
   ```
2. Listar las conexiones activas utilizando `netstat` y `ss`:
   ```bash
   netstat -tuln
   ss -tuln
   ```

### Parte 3: Transferencia de Archivos
1. Crear un archivo de reporte de ventas diario y transferirlo:
   ```bash
   echo "Reporte de ventas del día" > ventas.txt
   rsync ventas.txt /tmp/
   ```
2. Verificar la transferencia del archivo:
   ```bash
   ls /tmp | grep ventas.txt
   ```

---

Con estos pasos, tendrás configurada una red funcional para la panadería.
