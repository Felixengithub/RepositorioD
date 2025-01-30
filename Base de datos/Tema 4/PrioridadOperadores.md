# Prioridad de Operadores en SQL

La **prioridad de operadores en SQL** define el orden en que se evalúan los operadores en una consulta, lo que afecta el resultado de las expresiones y filtros. Entender esta prioridad es crucial para escribir consultas correctas y predecibles.

## Tabla de Prioridad de Operadores en SQL

De mayor a menor prioridad:

1. **Paréntesis**: `()`  
   - Los paréntesis tienen la máxima prioridad y se evalúan primero. Se usan para agrupar expresiones y forzar un orden específico.

   ```sql
   SELECT * FROM empleados WHERE (salario > 3000 AND departamento = 'IT') OR ciudad = 'Madrid';
   ```

2. **Operadores Aritméticos**:  
   - Multiplicación (`*`), división (`/`), módulo (`%`) tienen mayor prioridad que suma (`+`) y resta (`-`).

   ```sql
   SELECT salario * 12 AS salario_anual FROM empleados; -- Multiplicación antes de otras operaciones.
   ```

3. **Operadores de Comparación**:  
   - Igualdad (`=`), desigualdad (`<>`, `!=`), mayor que (`>`), menor que (`<`), mayor o igual (`>=`), menor o igual (`<=`), `BETWEEN`, `LIKE`, `IN`.

   ```sql
   SELECT * FROM empleados WHERE salario > 3000 AND edad < 40;
   ```

4. **Operadores Lógicos**:
   - **NOT**: Tiene la mayor prioridad entre los operadores lógicos y se evalúa antes de `AND` y `OR`.
   - **AND**: Se evalúa después de `NOT` pero antes que `OR`.
   - **OR**: Tiene la menor prioridad de los operadores lógicos.

   ```sql
   SELECT * FROM empleados WHERE NOT (salario < 3000 AND ciudad = 'Madrid') OR departamento = 'IT';
   ```

## Orden de Evaluación

1. **Paréntesis**: Siempre primero.
2. **NOT**: Se aplica antes que cualquier otro operador lógico.
3. **AND**: Se evalúa después de `NOT`.
4. **OR**: Se evalúa al final.

---

## Ejemplo con Prioridad

### Consulta:
```sql
SELECT * FROM empleados 
WHERE salario > 3000 OR departamento = 'IT' AND ciudad = 'Madrid';
```

### Orden de Evaluación:
1. `departamento = 'IT' AND ciudad = 'Madrid'`: El `AND` tiene mayor prioridad que el `OR`.
2. `salario > 3000 OR (resultado del AND anterior)`: El `OR` se evalúa después.

Si queremos que el `OR` se evalúe antes, debemos usar paréntesis:
```sql
SELECT * FROM empleados 
WHERE (salario > 3000 OR departamento = 'IT') AND ciudad = 'Madrid';
```

---

## Reglas Generales para Evitar Errores

1. **Usa paréntesis para controlar la prioridad**: Esto mejora la claridad y reduce errores.
2. **Recuerda la prioridad natural**: `NOT` > `AND` > `OR`.
3. **Prueba tus consultas**: Ejecuta ejemplos simples para confirmar el comportamiento.
