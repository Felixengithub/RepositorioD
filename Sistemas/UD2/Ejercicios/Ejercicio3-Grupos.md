
# Ejercicios de Gestión de Grupos en Unix/Linux

### Ejercicio 1: Creación de un Grupo
Crea un grupo llamado `proyecto_web` con el GID 1050. Explica los pasos que debes seguir y proporciona el comando correspondiente.

**Solución**:
Para crear un nuevo grupo con un GID específico, puedes usar el comando `groupadd` con la opción `-g` para definir el GID.

Comando:
```bash
groupadd -g 1050 proyecto_web
```

---

### Ejercicio 2: Eliminación de un Grupo
Elimina el grupo llamado `proyecto_web`. Antes de eliminarlo, asegúrate de que ningún usuario tenga este grupo como grupo primario. Proporciona los comandos que utilizarías para verificar y luego eliminar el grupo.

**Solución**:
Primero, debes verificar si algún usuario tiene el grupo como primario. Esto se puede revisar en el archivo `/etc/passwd` o ejecutando:
```bash
grep proyecto_web /etc/passwd
```
Si encuentras algún usuario con este grupo como primario, debes cambiar su grupo principal usando el comando `usermod`:
```bash
usermod -g usuarios <usuario>
```
Luego, puedes eliminar el grupo:
```bash
groupdel proyecto_web
```

---

### Ejercicio 3: Modificación de un Grupo
El grupo `desarrollo` tiene el GID 1002, pero necesitas cambiar su nombre a `desarrollo_backend`. Proporciona el comando necesario para hacer este cambio sin modificar su GID.

**Solución**:
Usa el comando `groupmod` con la opción `-n` para cambiar el nombre del grupo:

```bash
groupmod -n desarrollo_backend desarrollo
```

---

### Ejercicio 4: Añadir un Usuario a un Grupo Secundario
Añade al usuario `maria` al grupo `desarrollo_backend` como grupo secundario. Indica el comando necesario para hacer esta modificación.

**Solución**:
Puedes usar el comando `usermod` con la opción `-aG` para agregar un usuario a un grupo secundario:

```bash
usermod -aG desarrollo_backend maria
```

---

### Ejercicio 5: Listar Grupos Secundarios
Escribe el comando que permite listar los grupos secundarios a los que pertenece el usuario `maria`.

**Solución**:
Para listar los grupos a los que pertenece un usuario, puedes usar el comando `groups` seguido del nombre del usuario:

```bash
groups maria
```
