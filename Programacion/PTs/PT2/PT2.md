# Prueba Técnica 2 : Cocodrilo Sacamuelas

## [Enlace Github](https://classroom.github.com/a/90JDGPIg)

### **Objetivo:**
Implementar el juego **Cocodrilo Sacamuelas** en JavaScript para dos jugadores. El juego debe usar dos arrays: 
1. Uno para representar el estado interno del juego (dientes sanos y dañados).
2. Otro para representar lo que los jugadores ven, utilizando emojis.

---

### **Descripción del Problema:**

1. **Tablero Interno del Juego:**
   - Representado como un array de 10 elementos.
   - Cada elemento es:
     - `0` = diente sano.
     - `1` = diente dañado.
   - El número de dientes dañados es un valor **aleatorio** entre 1 y 5, y sus posiciones son asignadas de manera aleatoria.

2. **Tablero Visible para los Jugadores:**
   - Representado como un array de 10 elementos.
   - Al inicio del juego, todos los dientes están ocultos, usando un emoji como `🦷`.
   - A medida que los jugadores seleccionan dientes, el array visible se actualiza:
     - Si el diente es sano, se muestra un emoji como `✅`.
     - Si el diente es dañado, se muestra un emoji como `💥`.

---

### **Reglas del Juego:**

1. **Inicio del Juego:**
   - Generar el tablero interno con posiciones aleatorias para los dientes dañados (el número de dientes dañados es aleatorio entre 1 y 5).
   - Generar un tablero visible inicial, donde todos los dientes están representados como `🦷`.

2. **Turnos de los Jugadores:**
   - Alternan turnos para seleccionar un índice del tablero (0 a 9).
   - Si seleccionan un diente sano (`0`):
     - El tablero visible se actualiza para mostrar `✅` en esa posición.
   - Si seleccionan un diente dañado (`1`):
     - El tablero visible se actualiza para mostrar `💥` en esa posición.
     - El cocodrilo muerde y el jugador pierde.
   - Si un jugador selecciona un diente ya presionado (mostrado como `✅`), debe elegir otra posición.

3. **Finalización del Juego:**
   - Si un jugador selecciona un diente dañado (`1`), pierde y el juego termina inmediatamente.
   - Si todos los dientes sanos (`0`) son seleccionados sin presionar ningún diente dañado, ambos jugadores ganan.

---

### **Ejemplo de Ejecución 1:**

**Inicio del Juego:**
- Tablero Interno: `[0, 0, 1, 0, 0, 0, 1, 0, 0, 0]` (no visible para los jugadores).
- Tablero Visible: `[🦷, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷]`.

**Turnos:**
1. Jugador 1 elige índice `0`.
   - Resultado: El diente es sano (`0`).
   - Tablero Visible: `[✅, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷]`.
2. Jugador 2 elige índice `2`.
   - Resultado: El diente está dañado (`1`).
   - Tablero Visible: `[✅, 🦷, 💥, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷]`.
   - **Mensaje:** "¡El cocodrilo mordió! Jugador 2 pierde."

---

### **Ejemplo de Ejecución 2:**

**Inicio del Juego:**
- Tablero Interno: `[1, 0, 0, 0, 1, 0, 0, 0, 0, 0]` (no visible para los jugadores).
- Tablero Visible: `[🦷, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷]`.

**Turnos:**
1. Jugador 1 elige índice `3`.
   - Resultado: El diente es sano (`0`).
   - Tablero Visible: `[🦷, 🦷, 🦷, ✅, 🦷, 🦷, 🦷, 🦷, 🦷, 🦷]`.
2. Jugador 2 elige índice `4`.
   - Resultado: El diente está dañado (`1`).
   - Tablero Visible: `[🦷, 🦷, 🦷, ✅, 💥, 🦷, 🦷, 🦷, 🦷, 🦷]`.
   - **Mensaje:** "¡El cocodrilo mordió! Jugador 2 pierde."