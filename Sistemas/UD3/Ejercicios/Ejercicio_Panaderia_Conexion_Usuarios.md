
# Ejercicio: Configuración de Usuarios en una Panadería

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
1. Inicia sesión como usuario administrador.
2. Crea los usuarios **panadero1** y **panadero2** utilizando `adduser`.

### Paso 2: Asignar Permisos
1. Crea un grupo llamado `empleados_panaderia`.
2. Agrega ambos usuarios al grupo.

### Paso 3: Configurar SSH
1. Instala y habilita el servidor SSH.
2. Configura claves SSH para que ambos usuarios puedan conectarse sin contraseña.

### Paso 4: Transferir Archivos
1. Configura un directorio compartido llamado `/home/compartido_panaderia` con permisos adecuados.
2. Realiza una transferencia de archivos entre los usuarios utilizando `scp`.

---

¡Con esto, tendrás un sistema funcional para gestionar usuarios en una panadería!
