
# Ejercicios de Gestión de Usuarios en Linux

## Ejercicio 1: Creación básica de usuarios
Crea un nuevo usuario llamado `maria` en el sistema utilizando el comando `adduser`. No es necesario realizar ninguna configuración adicional por el momento.

### Requisitos:
- Usar el comando `adduser` para crear la cuenta.
- Verificar que la cuenta fue creada y que su directorio de inicio existe.

---

## Ejercicio 2: Crear un usuario con un directorio de inicio personalizado
Crea un usuario llamado `pedro` con su directorio de inicio en `/opt/usuarios/pedro` en lugar de la ubicación predeterminada.

### Requisitos:
- Usar el comando `adduser` con la opción correcta para establecer un directorio de inicio personalizado.
- Verificar que el directorio fue creado en la ubicación correcta.

---

## Ejercicio 3: Asignar un shell específico
Crea un usuario llamado `lucia` y asegúrate de que su shell predeterminado sea `/bin/zsh`.

### Requisitos:
- Usar el comando `adduser` con la opción adecuada para establecer el shell predeterminado.
- Verificar que el shell fue configurado correctamente.

---

## Ejercicio 4: Eliminar un usuario y su directorio de inicio
Elimina al usuario `maria` del sistema y asegúrate de que su directorio de inicio sea eliminado.

### Requisitos:
- Usar el comando `deluser` con la opción adecuada para eliminar el directorio de inicio.
- Verificar que el usuario y su directorio de inicio no existen más.

---

## Ejercicio 5: Modificar el nombre de un usuario
Cambia el nombre del usuario `pedro` a `pedroc`. No es necesario modificar su directorio de inicio.

### Requisitos:
- Usar el comando `usermod` para cambiar el nombre de usuario.
- Verificar que el cambio se realizó correctamente.

---

## Ejercicio 6: Añadir un usuario a un grupo secundario
Añade al usuario `lucia` al grupo `sudo`, para que tenga privilegios administrativos.

### Requisitos:
- Usar el comando `usermod` con la opción correcta para añadir el usuario a un grupo secundario.
- Verificar que el usuario fue añadido correctamente al grupo `sudo`.

---

## Ejercicio 7: Bloquear la cuenta de un usuario
Bloquea la cuenta del usuario `lucia` para que no pueda iniciar sesión.

### Requisitos:
- Usar el comando `usermod` para bloquear la cuenta.
- Verificar que el usuario no puede iniciar sesión.

---

## Ejercicio 8: Visualizar información detallada de un usuario
Utiliza el comando `id` para obtener información detallada sobre el usuario `pedroc`.

### Requisitos:
- Usar el comando `id` para visualizar el UID, GID y los grupos a los que pertenece el usuario.
- Verificar que la información mostrada es correcta.

