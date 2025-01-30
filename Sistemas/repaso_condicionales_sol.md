# Soluciones de los Ejercicios de Bash: `for`, `while`, `if-elif-else`

---

## **Ejercicios con `for`**

### **1. Imprimir una tabla de multiplicar**
```bash
#!/bin/bash
read -p "Introduce un número: " numero
for i in {1..10}; do
  echo "$numero x $i = $((numero * i))"
done
```

### **2. Sumar números en un rango**
```bash
#!/bin/bash
read -p "Introduce el número inicial: " inicio
read -p "Introduce el número final: " fin
suma=0
for ((i=inicio; i<=fin; i++)); do
  suma=$((suma + i))
done
echo "La suma de los números entre $inicio y $fin es: $suma"
```

### **3. Enumerar archivos en un directorio**
```bash
#!/bin/bash
contador=1
for archivo in *; do
  echo "Archivo $contador: $archivo"
  contador=$((contador + 1))
done
```

### **4. Imprimir números pares**
```bash
#!/bin/bash
for i in {1..50}; do
  if [ $((i % 2)) -eq 0 ]; then
    echo "$i"
  fi
done
```

---

## **Ejercicios con `while`**

### **5. Adivinar un número**
```bash
#!/bin/bash
numero_secreto=$((RANDOM % 100 + 1))
intento=0
while true; do
  read -p "Adivina el número (entre 1 y 100): " intento
  if [ "$intento" -lt "$numero_secreto" ]; then
    echo "Más alto."
  elif [ "$intento" -gt "$numero_secreto" ]; then
    echo "Más bajo."
  else
    echo "¡Felicidades! Has adivinado el número."
    break
  fi
done
```

### **6. Contador regresivo**
```bash
#!/bin/bash
read -p "Introduce un número para la cuenta regresiva: " numero
while [ "$numero" -ge 0 ]; do
  echo "Faltan $numero segundos."
  sleep 1
  numero=$((numero - 1))
done
echo "¡Tiempo terminado!"
```

### **7. Validar una contraseña**
```bash
#!/bin/bash
contraseña_correcta="segura123"
while true; do
  read -sp "Introduce la contraseña: " contraseña
  echo
  if [ "$contraseña" = "$contraseña_correcta" ]; then
    echo "Contraseña correcta."
    break
  else
    echo "Contraseña incorrecta. Inténtalo de nuevo."
  fi
done
```

### **8. Calcular la media de notas**
```bash
#!/bin/bash
suma=0
contador=0
while true; do
  read -p "Introduce una nota (número negativo para terminar): " nota
  if [ "$nota" -lt 0 ]; then
    break
  fi
  suma=$((suma + nota))
  contador=$((contador + 1))
done
if [ "$contador" -gt 0 ]; then
  media=$(echo "scale=2; $suma / $contador" | bc)
  echo "La media de las notas es: $media"
else
  echo "No se introdujeron notas."
fi
```

---

## **Ejercicios con `if-elif-else`**

### **9. Determinar si un número es positivo, negativo o cero**
```bash
#!/bin/bash
read -p "Introduce un número: " numero
if [ "$numero" -gt 0 ]; then
  echo "El número es positivo."
elif [ "$numero" -lt 0 ]; then
  echo "El número es negativo."
else
  echo "El número es cero."
fi
```

### **10. Clasificación de edades**
```bash
#!/bin/bash
read -p "Introduce tu edad: " edad
if [ "$edad" -lt 12 ]; then
  echo "Eres un niño."
elif [ "$edad" -ge 12 ] && [ "$edad" -le 18 ]; then
  echo "Eres un adolescente."
elif [ "$edad" -ge 19 ] && [ "$edad" -le 64 ]; then
  echo "Eres un adulto."
else
  echo "Eres un anciano."
fi
```

### **11. Número par o impar**
```bash
#!/bin/bash
read -p "Introduce un número: " numero
if [ $((numero % 2)) -eq 0 ]; then
  echo "El número es par."
else
  echo "El número es impar."
fi
```

### **12. Calculadora básica**
```bash
#!/bin/bash
read -p "Introduce el primer número: " num1
read -p "Introduce el segundo número: " num2
read -p "Introduce la operación (+, -, *, /): " operacion
if [ "$operacion" = "+" ]; then
  echo "Resultado: $((num1 + num2))"
elif [ "$operacion" = "-" ]; then
  echo "Resultado: $((num1 - num2))"
elif [ "$operacion" = "*" ]; then
  echo "Resultado: $((num1 * num2))"
elif [ "$operacion" = "/" ]; then
  if [ "$num2" -ne 0 ]; then
    echo "Resultado: $((num1 / num2))"
  else
    echo "Error: División por cero."
  fi
else
  echo "Operación no válida."
fi
```
