## Ejercicio 1

### 1. Crear el siguiente árbol de directorios a partir de tu home:

```
usuario/
└── pg1
└── ug1/
    └── ee51vn/
        └── pics/
        └── docs/
    └── ma51ik
```

### Comandos:

```bash
cd ~  # Moverse al directorio home del usuario
mkdir -p ug1/ee51vn/{pics,docs}  # Crear la estructura de directorios
touch pg1 ug1/ma51ik  # Crear los archivos vacíos pg1 y ma51ik
```

---

## Ejercicio 2

### 1. Mover el directorio `pics` dentro del directorio `ug1` y renombrarlo como `imagenes`:

```bash
mv ug1/ee51vn/pics ug1/imagenes
```

### 2. Copiar el directorio `docs` dentro del directorio `ug1`:

```bash
cp -r ug1/ee51vn/docs ug1/
```

---

## Ejercicio 3

### 1. Lista los archivos en tu directorio actual usando `ls -l`:

```bash
ls -l
```

### 2. Identificar un archivo que no tenga la fecha y hora actual:

Observa la salida de `ls -l` para encontrar un archivo con una fecha anterior.

### 3. Utiliza el comando `touch` sobre ese archivo:

```bash
touch nombre_del_archivo
```

### 4. Lista nuevamente los archivos y observa cómo ha cambiado la fecha de modificación:

```bash
ls -l
```

---

## Ejercicio 4

### 1. Realizar las siguientes acciones dentro de tu directorio **home**:

- Crear un directorio para **SI** (Sistemas Informáticos):

```bash
mkdir ~/SI
```

- Dentro del directorio **SI**, copiar los archivos `hosts` y `passwd` desde `/etc`:

```bash
cp /etc/passwd ~/SI/
cp /etc/hosts ~/SI/
```

- Mostrar el contenido de los archivos copiados:

```bash
cat ~/SI/hosts ~/SI/passwd
```

---

## Ejercicio 5

### 1. Crear los siguientes directorios en tu directorio **HOME**:

```bash
cd ~  # Moverse al directorio home
mkdir Sesion.1 Sesion.10 Sesion.2 Sesion.3 Sesion.4 Sesion.27 Prueba.1 Sintaxis.2
```

### 2. Realizar las siguientes tareas:

- Borrar el directorio `Sesion.4`:

```bash
rmdir Sesion.4
```

- Lista todos los directorios que empiecen por `Sesion.` y tengan un único carácter adicional:

```bash
ls Sesion.?
```

- Lista los directorios cuyos nombres terminen en `.1`:

```bash
ls *.1
```

- Lista los directorios cuyos nombres terminen en `.1` o `.2`:

```bash
ls *.{1,2}
ls *.1 *.2
```

- Lista los directorios cuyos nombres contengan los caracteres `si`:

```bash
ls *si*
```

- Lista los directorios cuyos nombres contengan los caracteres `si` y terminen en `.2`:

```bash
ls *[si]*.2
```

---

## Ejercicio 6

### 1. Desplazarse hasta el directorio `/bin` y generar los siguientes listados de archivos utilizando metacaracteres:

- Archivos con nombres de solo cuatro caracteres:

```bash
cd /bin
ls ????
```

- Archivos que comiencen por las letras `d` o `f`:

```bash
ls {d,f}*  
ld d* f*
```

- Archivos que comiencen por `sa`, `se` o `ad`:

```bash
ls {sa,se,ad}*
```

- Archivos que comiencen por `t` y terminen en `r`:

```bash
ls t*r
```

---

## Ejercicio 7

### 1. Muestra el contenido de un archivo de texto:

- Las primeras 10 líneas:

```bash
head nombre_del_archivo
```

- Las últimas 5 líneas:

```bash
tail -n 5 nombre_del_archivo
```

---

## Ejercicio 8

### 1. Visualiza el contenido de todos los archivos del directorio actual que terminen en `.txt` o `.c`:

```bash
cat *.txt *.c
```