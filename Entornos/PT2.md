# Prueba Técnica 2: Diagramas

## [Enlace GitHub](https://classroom.github.com/a/yA2fXOh4)

### Ejercicio 1 

Usando la herramienta que consideres apropiada (se recomienda **Draw.io** o **Lucidcharts**): Crea el diagrama de flujo de un algoritmo que muestra por pantalla el máximo y el mínimo de un array desordenado de números enteros.


### Ejercicio 2 

Usando la herramienta que consideres apropiada (se recomienda **Draw.io** o **Lucidcharts**): Crea el diagrama de flujo de un algoritmo de ordenación de burbuja. Te recomiendo que uses el código que tienes en la UD2 como referencia.


### Ejercicio 3

El siguiente código, aunque corto e inútil, presenta varias demostraciones de mala praxis en la programación. Siguiendo el principio de los Boy Scouts, intenta dejar el código mejor de lo que lo has encontrado. Recuerda que no consiste en hacerlo útil, ni justificar qué sentido tiene el código, sino mejorar lo que hay para que sea más legible, comprensible y fácil de mantener. Puedes guardar el código en un fichero y mencionar qué errores tiene mediante comentarios en el propio código, describir los errores en un documento aparte a modo de documentación o directamente guardarlo en un fichero, corregir los errores y mandar el código corregido. Sea como sea, recuerda añadir y empujar tu respuesta al repositorio remoto. 


```
let x = 5; 
var y = 10; 
let ZzZz = "Hola"; 
let a = [1, 2, 3]; 

function haz() {
    for (let i = 0; i < y; i++) {
        if (x == 5) {
            console.log(ZzZz);
        } else if (x > y) {
            x++;
        } else {
            x = x - 1;
        }
    }
}

haz();

let mivaria = "global";

function cambiaglobal() {
    mivaria = "cambiada";
}

cambiaglobal();
console.log(mivaria); 
```