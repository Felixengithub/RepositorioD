
# Soluciones de los Ejercicios de Gestión de Usuarios en Linux

## Ejercicio 1: Creación básica de usuarios
Comando para crear el usuario `maria`:

```bash
sudo adduser maria
```

Verificación:

```bash
ls /home/maria
```

---

## Ejercicio 2: Crear un usuario con un directorio de inicio personalizado
Comando para crear el usuario `pedro` con un directorio de inicio personalizado:

```bash
sudo adduser --home /opt/usuarios/pedro pedro
```

Verificación:

```bash
ls /opt/usuarios/pedro
```

---

## Ejercicio 3: Asignar un shell específico
Comando para crear el usuario `lucia` con `/bin/zsh` como su shell predeterminado:

```bash
sudo adduser --shell /bin/zsh lucia
```

Verificación:

```bash
grep lucia /etc/passwd
```

---

## Ejercicio 4: Eliminar un usuario y su directorio de inicio
Comando para eliminar el usuario `maria` y su directorio de inicio:

```bash
sudo deluser --remove-home maria
```

Verificación:

```bash
ls /home/maria
```

---

## Ejercicio 5: Modificar el nombre de un usuario
Comando para cambiar el nombre del usuario `pedro` a `pedroc`:

```bash
sudo usermod -l pedroc pedro
```

Verificación:

```bash
id pedroc
```

---

## Ejercicio 6: Añadir un usuario a un grupo secundario
Comando para añadir el usuario `lucia` al grupo `sudo`:

```bash
sudo usermod -aG sudo lucia
```

Verificación:

```bash
id lucia
```

---

## Ejercicio 7: Bloquear la cuenta de un usuario
Comando para bloquear la cuenta de `lucia`:

```bash
sudo usermod -L lucia
```

Verificación:

Intentar iniciar sesión con el usuario `lucia` debería fallar.

---

## Ejercicio 8: Visualizar información detallada de un usuario
Comando para visualizar la información de `pedroc`:

```bash
id pedroc
```

Verificación:

El comando mostrará el UID, GID y los grupos a los que pertenece el usuario.
