# Ejercicios Prácticos: Campanadas de Navidad

A continuación, encontrarás una serie de ejercicios prácticos para reforzar los conceptos estudiados en el tema sobre Bash scripting, con la temática de las campanadas de Navidad.

## 1. Script Básico: Saludo Navideño

Crea un script que imprima un saludo navideño personalizado.

**Instrucciones:**
- Crea un archivo llamado `saludo_navidad.sh`.
- Declara una variable `nombre` que almacene tu nombre.
- Usa `echo` para imprimir: "¡Feliz Navidad, [nombre]! Espero que disfrutes de las campanadas."

```bash
# Ejemplo de ejecución:
# ./saludo_navidad.sh
# Salida esperada:
# ¡Feliz Navidad, [nombre]! Espero que disfrutes de las campanadas.
```

---

## 2. Contador de Campanadas

Crea un script que simule el conteo de las 12 campanadas.

**Instrucciones:**
- Crea un archivo llamado `campanadas.sh`.
- Usa un bucle `for` para iterar desde 1 hasta 12.
- En cada iteración, imprime "Campanada [n]".

```bash
# Ejemplo de ejecución:
# ./campanadas.sh
# Salida esperada:
# Campanada 1
# Campanada 2
# ...
# Campanada 12
```

---

## 3. Comparador de Edad para Año Nuevo

Crea un script que evalúe si alguien puede quedarse despierto hasta las campanadas.

**Instrucciones:**
- Crea un archivo llamado `edad_campanadas.sh`.
- Pasa como argumento la variable edad
- Usa un condicional `if` para comprobar si la edad es mayor o igual a 10.
  - Si lo es, imprime "Puedes quedarte despierto hasta las campanadas."
  - Si no lo es, imprime "Debes ir a dormir antes de las campanadas."

```bash
# Ejemplo de ejecución:
# ./edad_campanadas.sh 20
# Salida esperada:
# Puedes quedarte despierto hasta las campanadas.
```

---

## 4. Sumador de Dulces Navideños

Crea un script que calcule cuántos dulces quedan tras repartirlos entre los invitados.

**Instrucciones:**
- Crea un archivo llamado `dulces_navidad.sh`.
- Declara dos variables: `dulces_totales` (número total de dulces) y `invitados` (número de personas).
- Usa una operación aritmética para calcular cuántos dulces corresponden a cada invitado y cuántos sobran.
- Imprime los resultados.

```bash
# Ejemplo de ejecución:
# ./dulces_navidad.sh
# Salida esperada:
# A cada invitado le corresponden [n] dulces.
# Sobran [m] dulces.
```

---

## 5. Selector de Villancico

Crea un script que seleccione aleatoriamente un villancico para cantar.

**Instrucciones:**
- Crea un archivo llamado `villancico.sh`.
- Declara un array con nombres de villancicos (ejemplo: "Noche de Paz", "Los Peces en el Río", etc.).
- Usa `$RANDOM` y operaciones aritméticas para seleccionar uno de los villancicos al azar.
- Imprime el nombre del villancico seleccionado.

```bash
# Ejemplo de ejecución:
# ./villancico.sh
# Salida esperada:
# El villancico seleccionado es: Los Peces en el Río
```