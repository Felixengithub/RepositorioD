# Prueba Técnica 0: Simulacro

## [Enlace Github](https://classroom.github.com/a/J8rCtPAH)

### **Instrucciones Generales**

1. **Lee todo la prueba** detenidamente antes de empezar a programar. Es importante que comprendas bien el problema antes de comenzar a escribir código.
2. La prueba se realizará usando **GitHub Classroom**, por lo que debes estar familiarizado con su uso. Mas abajo, se explica detalladamente cómo funciona.
3. Solo están permitidos los **apuntes disponibles en GitHub**, ya sean los proporcionados por el profesor o tus propios apuntes. 
4. **No está permitido buscar en Internet** ni utilizar **IA generativa** para resolver la prueba.
5. **No se permite la comunicación entre alumnos** durante la prueba. Tener abiertas aplicaciones de mensajería como **Discord, Telegram, WhatsApp, etc.**, se considerará intento de copia, lo que resultará en un **0 automático**.
6. **Solo se corregirán programas que se puedan ejecutar correctamente**. Es preferible entregar un código que funcione aunque falten algunas funcionalidades, a presentar un programa con errores de sintaxis o código que no tiene sentido. Si tu programa **no se ejecuta** o tiene **errores de sintaxis**, se calificará con un **0**.
7. Se valorará la calidad y limpieza del código. Asegúrate de usar **nombres de variables descriptivos** y el estilo de nombres **camelCase** para mantener una estructura clara y fácil de leer.
8. Están prohibidas las palabras reservadas **`break`** y **`continue`** debido a la regla de **Single Exit Rule**. Esta regla establece que una función debe tener **un solo punto de salida**, lo que facilita la lectura y depuración del código. El uso de estas palabras puede generar múltiples puntos de salida en bucles o funciones, haciendo el código más difícil de entender y mantener.
9. **Incumplir cualquiera de estas normas** implicará una calificación de **0** en la prueba.

---

### **Uso de GitHub Classroom**

Esta prueba técnica se llevará a cabo en **GitHub Classroom**, que te asignará un repositorio privado donde deberás desarrollar y entregar tu código. Aquí te explico paso a paso cómo utilizarlo:

1. **Aceptar la tarea**: Al inico de este documento hay un enlace de **GitHub Classroom** para acceder a la prueba. Una vez que hagas clic en el enlace, deberás aceptar la tarea. Esto generará automáticamente un **repositorio privado** en GitHub que estará vinculado exclusivamente a ti.

2. **Acceder al repositorio**: Después de aceptar la tarea, tendrás acceso a tu repositorio privado y podrás clonarlo. En este repositorio deberás escribir el código para resolver el problema planteado en la prueba.

3. **Hacer commits**: Durante la prueba, el profesor te pedirá que hagas varios **commits** en tu repositorio. Un **commit** es un punto de control que guarda los cambios realizados en tu código hasta ese momento. Recuerda que es importante hacer commits con mensajes claros que indiquen qué cambios has hecho en el código. 

4. **Subir los cambios (push)**: Una vez hecho el commit, debes subir los cambios a GitHub usando **git push**. Esto es crucial, ya que los commits que no se suben a GitHub no serán visibles para el profesor. Puedes hacer esto usando diferentes herramientas:

   - Si trabajas en una terminal o línea de comandos, los comandos son los siguientes:
     - Para guardar tus cambios localmente (hacer commit):
       ```bash
       git add .
       git commit -m "Descripción clara de los cambios"
       ```
     - Para subir tus cambios al repositorio en la nube:
       ```bash
       git push
       ```

   - Si prefieres, puedes usar **Visual Studio Code** o **GitHub Desktop**, que facilitan el proceso mediante una interfaz gráfica. Ambas herramientas te permiten hacer **commits** y **push** de manera sencilla sin necesidad de usar la línea de comandos.

5. **Mantén tu trabajo actualizado**: Es muy importante que, cada vez que hagas un cambio significativo en tu código, lo **guardes** (commit) y lo **subas a GitHub** (push). Esto no solo permite que el profesor vea tu progreso, sino que también evita perder el trabajo en caso de problemas con tu ordenador.

6. **Entrega final**: Al final de la prueba, asegúrate de haber subido todos tus cambios a tu repositorio en GitHub. El profesor corregirá tu prueba basándose en lo que hayas subido a la plataforma. **Recuerda que si no haces push, tu código no será visible para el profesor y, por lo tanto, no podrá ser corregido**.

---

## **Prueba Técnica: Planificador de Viaje**

Vas a desarrollar un programa que te ayude a planificar un viaje, controlando los **gastos** y los **kilómetros recorridos** a lo largo de los días del viaje. El programa deberá realizar cálculos para ayudarte a gestionar tu presupuesto y saber cuántos kilómetros has recorrido en total.

### **Instrucciones del programa:**

1. **Solicitar información inicial:**
   - Pide al usuario el **número de días del viaje**.
   - Solicita el **presupuesto total** disponible para todo el viaje.

2. **Registrar datos diarios:**
   - Para cada día, el programa debe solicitar:
     - Los **gastos del día** en euros.
     - Los **kilómetros recorridos** ese día.

3. **Comprobar presupuesto:**
   - El programa debe verificar si los **gastos totales** superan el presupuesto disponible. Si esto ocurre, el programa se debe detener y mostrar un mensaje de alerta:
     ```
     ¡Alerta! Has superado el presupuesto de [presupuesto].
     ```

4. **Mostrar resultados al final del viaje:**
   Al final del viaje, el programa debe mostrar:
   - **Kilómetros totales recorridos** durante el viaje.
   - **Gasto diario promedio** (gastos totales divididos entre el número de días).
   - **Porcentaje del presupuesto gastado**.

---

### **Ejemplo de ejecución correcta:**

```
Introduce el número de días del viaje: 3
Introduce el presupuesto total para el viaje: 600

Día 1:
Introduce los gastos del día 1: 150
Introduce los kilómetros recorridos en el día 1: 300

Día 2:
Introduce los gastos del día 2: 200
Introduce los kilómetros recorridos en el día 2: 250

Día 3:
Introduce los gastos del día 3: 120
Introduce los kilómetros recorridos en el día 3: 350

Resumen del viaje:
- Total de kilómetros recorridos: 900 km
- Gasto diario medio: 156.67 €
- Porcentaje del presupuesto gastado: 78.333%
```

### **Ejemplo de ejecución con superación del presupuesto:**

```
Introduce el número de días del viaje: 3
Introduce el presupuesto total para el viaje: 400

Día 1:
Introduce los gastos del día 1: 150
Introduce los kilómetros recorridos en el día 1: 300

Día 2:
Introduce los gastos del día 2: 200
Introduce los kilómetros recorridos en el día 2: 250

Día 3:
Introduce los gastos del día 3: 120
Introduce los kilómetros recorridos en el día 3: 350

¡Alerta! Has superado el presupuesto de 400 €.
```

---

### **Consejos para afrontar el ejercicio:**

1. **Identifica las variables**: Antes de comenzar a programar, piensa en las variables que necesitarás para resolver el problema.

2. **Descompón el problema**: Divide el problema en pequeños pasos.

3. **Mantén el código limpio y legible**: Asegúrate de usar nombres de variables que expliquen claramente su función y sigue una estructura clara para que tu código sea fácil de entender.

---

### **Recuerda:**

- **Haz varios commits** durante la prueba como te lo indique el profesor. Utiliza `git commit` seguido de `git push` para subir tus cambios.
- Si prefieres usar **Visual Studio Code** o **GitHub Desktop**, puedes hacer los commits y el push usando esas herramientas, pero **asegúrate de que todo esté subido a GitHub** antes de finalizar la prueba.
- **No te olvides de leer todo el enunciado antes de empezar a programar.**

¡Buena suerte!