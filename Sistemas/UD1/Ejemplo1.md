# Ejemplo de clase 1
Desde tu **home** (`$HOME` o `~`), sin usar `cd` para moverte, realiza las siguientes tareas de creación, eliminación y manipulación de archivos y directorios.

1. **Crea la siguiente estructura de directorios y archivos**:
   - `DIR1`
     - `DIR11`
     - `DIR12`
     - `DIR13`
       - `DIR131`
         - `fichero1`
         - `fichero2`
     - `DIR14`
       - `fichero3`
     - `DIR15`
       - `DIR151`
         - `fichero4`

2. **Elimina los siguientes archivos y directorios desde tu home (sin usar `cd`)**:
   - Elimina `fichero3`
   - Elimina `fichero4`
   - Elimina el directorio `DIR131`

3. **Muevete a `DIR151`** y **desde ahí** elimina `DIR11` y `DIR12`.

---

## Resolución:

### **Paso 1: Crear la estructura de directorios y archivos**


```bash
mkdir DIR1
mkdir DIR1/DIR11
mkdir DIR1/DIR12
mkdir DIR1/DIR13
mkdir DIR1/DIR13/DIR131
mkdir DIR1/DIR14
mkdir DIR1/DIR15
mkdir DIR1/DIR15/DIR151

touch DIR1/DIR13/DIR131/fichero1 
touch DIR1/DIR13/DIR131/fichero2
touch DIR1/DIR14/fichero3
touch DIR1/DIR15/DIR151/fichero4
```

**Otra opción:**

```bash
mkdir -p DIR1/{DIR11,DIR12,DIR13/DIR131,DIR14,DIR15/DIR151}
touch DIR1/DIR13/DIR131/fichero1 DIR1/DIR13/DIR131/fichero2
touch DIR1/DIR14/fichero3
touch DIR1/DIR15/DIR151/fichero4
```

### **Paso 2: Eliminar `fichero3`, `fichero4` y el directorio `DIR131` desde home (sin usar `cd`)**

```bash
rm DIR1/DIR14/fichero3
rm DIR1/DIR15/DIR151/fichero4
rm -r DIR1/DIR13/DIR131 
```

### **Paso 3: Moverse a `DIR151` y desde ahí eliminar `DIR11` y `DIR12`**

```bash
cd DIR1/DIR15/DIR151
rmdir ~/DIR1/DIR11 
rmdir ~/DIR1/DIR12
```

**Otra opción:**

```bash
cd DIR1/DIR15/DIR151
rmdir ../../DIR11 
rmdir ../../DIR12
```