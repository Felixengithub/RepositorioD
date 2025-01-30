# Carrera de Renos de Santa
Recopila la información de tres renos: Su color, su longitud de salto y su frecuencia de salto.

¿Qué reno ganaría una carrera de 50 metros? ¿Y de 100 metros? Crea una función a la que le pases los metros que tenga la carrera y las características de los renos y te devuelva quién gana. Solicita esta información por teclado.

Esa función sería muy compleja y cambiaría dependiendo del número de renos que participaran en la carrera: Crea una función a la que le pases la info de un solo reno y te indique en qué segundo llegaría cada uno de los renos a la meta.
Al comparar los segundos que tarda cada uno de los renos podremos saber cuál es el ganador.
```
# Info sobre el reno.
...
El Reno Rojo tarda 30 segundos.
El Reno Azul tarda 27 segundos.
El Reno Verde tarda 33 segundos.

Gana el Reno Azul.
```
¿Podemos elegir el número de renos que participan? Modifica el código para que el número de renos se pueda introducir por pantalla.
¿Podemos generar la información de los tres renos de forma aleatoria? Modifica el código para que la longitud de salto debe ser entre 3 y 7 metros y la frecuencia de salto entre 5 y 15 segundos.

```
...
El Reno Rojo salta 3 metros cada 10 segundos.
El Reno Azul salta 2 metros cada 3 segundos.
El Reno Verde salta 1 metro cada 2 segundos.
```
Genera aleatoriamente cinco rondas con tres renos cada una [cada reno de un color, que representa su equipo] ¿Qué equipo ha ganado más rondas?
```
La primera ronda la gana el Reno Azul.
La segunda ronda la gana el Reno Rojo.
La tercera ronda la gana el Reno Rojo.
La cuarta ronda la gana el Reno Verde.
La quinta ronda la gana el Reno Rojo.

Ha ganado el equipo Rojo.
```

> [!NOTE]
> Funciones - Random - Bucles

# Elfo y el regalo perdido
Ayer lanzamos un regalo a la piscina de bolas del taller de Santa y resulta que llevaba un anillo de oro que nadie le quitó antes de lanzarlo.
Hay entre 400 y 500 bolas [Genera el valor aleatoriamente]

Sois 8 elfos los que sabéis que una de las bolas tiene el anillo de oro. Habéis decidido buscar el anillo por turnos, sacando una bola y comprobando si lo tiene. Luego devolvéis la bola a la piscina. ¿Quién encuentra el anillo? Explica cómo lo has implementado y por qué.
```
Al sacar la bola número 90: Petra el elfo se quedó con el anillo.
```
> [!NOTE]
> Funciones - Random - Bucles

# Impuesto por travieso
Los duendes traviesos reciben menos caramelos por cada siglo que han estado causando problemas. Santa ha decidido ponerles un "impuesto" de un 2% por cada siglo de vida que tienen.
[Crea una función a la que le pases la edad y el sueldo (en caramelos) del duende y te devuelva cuánto tiene que pagar.]
```
¿Cuántos años tiene el duende? 465
¿Cuántos caramelos gana? 10.010
Debe pagar un 8% -> 800,8 caramelos
```
> [!NOTE]
> Funciones - Operaciones

# Cuenta regresiva para Nochebuena
¿Sabéis cuánto tiempo falta para que Papá Noel empiece su reparto?
No lo sabe ni Papá Noel, porque es super despistado. Por eso, cuando queda un tiempo comprendido entre 240 y 450 segundos, ambos incluidos, los elfos empiezan con la cuenta atras. Genéra el número de segundos aleatoriamente.
Cuando falten múltiplos de 50 segundos, gritan los segundos que quedan, y también durante los últimos 10 segundos.

```
Tienes 327 segundos.
...
Quedan 300 segundos.
Quedan 250 segundos.
Quedan 200 segundos.
...
Quedan 10 ... 9 ... 8 ... 7 ... ... ... 2 ... 1... ¡SALIDA!
```
Transforma los segundos a minutos y segundos.
```
Tienes 5 minutos y 27 segundos.
...
Quedan 5 minutos y 0 segundos.
Quedan 4 minutos y 10 segundos.
Quedan 3 minutos y 20 segundos.
...
Quedan 10 ... 9 ... 8 ... 7 ... ... ... 2 ... 1... ¡SALIDA!
```
> [!NOTE]
> Random - Bucles - Operaciones %

# Visualización de criaturas navideñas
En el bosque encantado hemos visto muchas criaturas navideñas.

Cada vez que alguien ve una, grita el nombre de la criatura seguido de "!Qué bonito!", es decir, escribe: "Reno! Qué bonito!"
Hemos hecho una lista de todas las veces que la gente ha gritado.
Tenemos que sacar de esa lista, otra lista con los tipos de criaturas que hemos visualizado.

```
Entradas:
Reno! Qué bonito!
Duende! Qué bonito!
Reno! Qué bonito!
Muñeco de nieve! Qué bonito!

Salida:
Lista de gritos: ['Reno', 'Duende', 'Reno', 'Muñeco de nieve']
Lista de criaturas: ['Reno', 'Duende', 'Muñeco de nieve']
```
> [!NOTE]
> Bucles - Listas

# Reparto de Regalos
Santa tiene que repartir regalos en varias casas. Cada casa recibe un número aleatorio de regalos (entre 1 y 10). Crea una función que calcule el total de regalos entregados y cuántas casas reciben 1, 2, 3, etc. regalos. Usa listas para almacenar cuántas casas reciben cada cantidad de regalos.
```
Total de regalos: 85
Casas con 1 regalo: 5
Casas con 2 regalos: 7
Casas con 3 regalos: 4
```
> [!NOTE]
> Listas - Random - Bucles

# El Árbol Perfecto
Dibuja un árbol de Navidad con decoración aleatoria en cada nivel ("O", "*", "+"). Cuanto más alto el nivel, menos decoraciones.  

El primer nivel tiene que ser completo de "*".
El último nivel tiene que tener una "X" que representa la estrella. 
El resto de niveles tienen que empezar y terminar por "*".

Ejemplo:
```
    X
   O+*
  *+OO*
 *O*O+O*
*********
```
> [!NOTE]
> Bucles - Funciones - Operaciones de impresión

# El Laberinto del Polo Norte
Un elfo está atrapado en un laberinto de tamaño nxn. El elfo empieza en la posición (0,0) y debe llegar a la posición (n,n). Simula su movimiento aleatorio hasta que consiga llegar a la meta.
```
Laberinto 3x3
Posición inicial: (0,0)
Posición final: (3,3)
Movimientos:
- derecha
- arriba
- derecha
- abajo
- arriba
- derecha
- arriba
- arriba
¡Ya ha llegado!
```
> [!NOTE]
> Random - Bucles - Coordenadas (x, y)

