# Ejemplo de clase 2

1. Desde tu **home** (`$HOME` o `~`), crea la siguiente estructura de directorios y archivos:

```
DIR1/
├── DIR11/
├── DIR12/
│   ├── fichero1
│   ├── fichero2
├── DIR14/
│   └── fichero3
├── DIR15/
    └── DIR151/
```

```bash
cd ~  # Moverse a tu directorio home
mkdir -p DIR1/DIR11 DIR1/DIR12 DIR1/DIR14 DIR1/DIR15/DIR151  # Crear directorios
touch DIR1/DIR12/fichero{1,2}  # Crear los ficheros1 y 2 en DIR12
touch DIR1/DIR14/fichero3  # Crear el fichero3 en DIR14
```

2. Copia los **ficheros** de `DIR12` a `DIR151`.

```bash
cp DIR1/DIR12/fichero* DIR1/DIR15/DIR151/
```

3. Mueve el **fichero3** a `DIR11` y renómbralo como `fichero3.txt`.

```bash
mv DIR1/DIR14/fichero3 DIR1/DIR11/fichero3.txt
```