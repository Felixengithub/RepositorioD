# Condiciones en Bash

En Bash, las condiciones en los `if` permiten evaluar expresiones para realizar diferentes acciones según el resultado. A continuación, se detalla el funcionamiento de las condiciones, cuándo usar comillas, cuándo usar operadores como `=` o `-eq`, y cómo manejar variables que pueden contener texto o números.

---

## Sintaxis básica de un `if`
```bash
if [ <condición> ]; then
    # Código si la condición es verdadera
else
    # Código si la condición es falsa
fi
```
---

## Uso de comillas en condiciones
En Bash, es recomendable usar comillas dobles (`"`) para las variables en las condiciones de los `if`:

### Razones para usar comillas:
1. **Evitar errores con variables vacías:** Si una variable está vacía, sin comillas se generará un error de sintaxis.
   ```bash
   VAR=""
   if [ $VAR = "valor" ]; then
       echo "Igual"
   fi
   # Esto genera un error.

   if [ "$VAR" = "valor" ]; then
       echo "Igual"
   fi
   # Esto es seguro.
   ```

2. **Espacios en los valores:** Si la variable contiene espacios, las comillas garantizan que se evalúe como un único argumento.
   ```bash
   VAR="hola mundo"
   if [ "$VAR" = "hola mundo" ]; then
       echo "Correcto"
   fi
   ```
---

## Operadores de comparación
Los operadores de comparación en Bash varían según si estamos comparando cadenas o números.

### Comparación de cadenas
| Operador | Significado                   |
|----------|-------------------------------|
| `=`      | Igualdad entre cadenas        |
| `!=`     | Desigualdad entre cadenas     |
| `-z`     | La cadena está vacía          |
| `-n`     | La cadena no está vacía       |

#### Ejemplo:
```bash
STR="hola"
if [ "$STR" = "hola" ]; then
    echo "La cadena es 'hola'"
fi

if [ -z "$STR" ]; then
    echo "La cadena está vacía"
fi

if [ -n "$STR" ]; then
    echo "La cadena no está vacía"
fi
```

### Comparación de números
| Operador  | Significado                   |
|-----------|-------------------------------|
| `-eq`     | Igual a                      |
| `-ne`     | Distinto de                  |
| `-gt`     | Mayor que                    |
| `-lt`     | Menor que                    |
| `-ge`     | Mayor o igual que            |
| `-le`     | Menor o igual que            |

#### Ejemplo:
```bash
NUM=42
if [ "$NUM" -eq 42 ]; then
    echo "El número es 42"
fi

if [ "$NUM" -gt 10 ]; then
    echo "El número es mayor que 10"
fi
```

### Notas importantes:
- **No usar `=` para números:** El operador `=` compara cadenas, no valores numéricos. Para números, utiliza `-eq`, `-lt`, etc.

#### Ejemplo incorrecto:
```bash
if [ 5 = 5 ]; then
    echo "Esto puede fallar"
fi
```

---

## Variables con texto o números
Cuando una variable puede contener texto o números, se debe manejar con cuidado para evitar errores de comparación. La clave está en validar el contenido antes de compararlo como número.

### Validar si una variable es un número
Se puede usar una expresión regular para verificar si la variable contiene un número:
```bash
if [[ "$VAR" =~ ^[0-9]+$ ]]; then
    echo "La variable es un número"
else
    echo "La variable es texto"
fi
```

### Manejo seguro en casos mixtos
En el ejemplo proporcionado, la variable `entrada` puede ser texto (`salir`) o un número. Para manejar esto:
1. **Verificar si es texto específico:** Comprueba primero si es un texto esperado como `salir`.
2. **Validar si es un número:** Usa una validación antes de compararlo como número.

#### Ejemplo:
```bash
entrada="salir"
numero_objetivo=42

if [ "$entrada" = "salir" ]; then
    echo "Saliendo del juego."
elif [[ "$entrada" =~ ^[0-9]+$ ]]; then
    entrada_numero=$((entrada))
    if [ "$entrada_numero" -eq "$numero_objetivo" ]; then
        echo "¡Adivinaste el número!"
    elif [ "$entrada_numero" -lt "$numero_objetivo" ]; then
        echo "El número es mayor."
    else
        echo "El número es menor."
    fi
else
    echo "Entrada no válida."
fi
```

---

## Resumen
1. **Usa comillas para variables:** Siempre pon variables entre comillas para evitar errores con espacios o valores vacíos.
2. **Usa operadores correctos:**
   - Cadenas: `=` para igualdad.
   - Números: `-eq`, `-gt`, etc.
3. **Valida el contenido de las variables:** Cuando una variable puede ser texto o número, usa una expresión regular para determinar su tipo antes de proceder.

Con estas buenas prácticas, podrás manejar condiciones en Bash de forma eficiente y segura.
