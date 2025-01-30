
# Ejercicio: Configuración de Usuarios en una Panadería (Con Soluciones)

## Objetivo
Configurar usuarios para una máquina Linux, asignándoles permisos y configurando conexiones seguras SSH en el contexto de una panadería.

---

## Escenario
Tienes dos empleados en la panadería que necesitan acceso al sistema:
1. **panadero1**: Encargado de la producción de pan.
2. **panadero2**: Encargado del control de inventario.

Ambos empleados deben poder trabajar en colaboración y transferir archivos entre sus cuentas de usuario.

---

## Tareas a Realizar

### Paso 1: Crear Usuarios
```bash
sudo adduser panadero1
sudo adduser panadero2
```

### Paso 2: Asignar Permisos
1. Crear el grupo `empleados_panaderia`:
   ```bash
   sudo groupadd empleados_panaderia
   ```
2. Agregar los usuarios al grupo:
   ```bash
   sudo usermod -aG empleados_panaderia panadero1
   sudo usermod -aG empleados_panaderia panadero2
   ```

### Paso 3: Configurar SSH
1. Instalar y habilitar el servidor SSH:
   ```bash
   sudo apt update
   sudo apt install openssh-server -y
   sudo systemctl enable ssh
   sudo systemctl start ssh
   ```
2. Generar claves SSH para `panadero1` y configurarlas en `panadero2`:
   ```bash
   su - panadero1
   ssh-keygen -t rsa -b 2048
   ssh-copy-id panadero2@localhost
   ```

### Paso 4: Transferir Archivos
1. Crear el directorio compartido:
   ```bash
   sudo mkdir /home/compartido_panaderia
   sudo chmod 770 /home/compartido_panaderia
   sudo chgrp empleados_panaderia /home/compartido_panaderia
   ```
2. Realizar una transferencia de archivos utilizando `scp`:
   ```bash
   su - panadero1
   echo "Reporte de producción" > reporte.txt
   scp reporte.txt panadero2@localhost:/home/compartido_panaderia/
   ```

---

Con esto, tendrás un sistema funcional para gestionar usuarios en una panadería.
