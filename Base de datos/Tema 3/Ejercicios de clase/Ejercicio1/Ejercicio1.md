
# Ejercicio Práctico: Creación de Tablas en MySQL

### Estructura de las Tablas

#### Tabla `Departamentos`
Almacena información sobre los departamentos de la empresa.
- `id_departamento`: Entero, clave primaria, auto incrementable.
- `nombre_departamento`: Texto (VARCHAR 50), no nulo.

#### Tabla `Empleados`
Almacena información sobre los empleados de la empresa.
- `id_empleado`: Entero, clave primaria, auto incrementable.
- `nombre`: Texto (VARCHAR 50), no nulo.
- `apellido`: Texto (VARCHAR 50), no nulo.
- `fecha_nacimiento`: Fecha (DATE).
- `salario`: Decimal (10, 2).
- `id_departamento`: Entero, clave externa que referencia a `Departamentos(id_departamento)`.

#### Tabla `Proyectos`
Almacena información sobre los proyectos en los que trabajan los empleados.
- `id_proyecto`: Entero, clave primaria, auto incrementable.
- `nombre_proyecto`: Texto (VARCHAR 100), no nulo.
- `fecha_inicio`: Fecha (DATE), no nulo.
- `fecha_fin`: Fecha (DATE), puede ser nulo.
- `id_empleado`: Entero, clave externa que referencia a `Empleados(id_empleado)`.

## Instrucciones
1. Abre Visual Studio Code y crea un nuevo archivo llamado `empresa.sql`.
2. Escribe las instrucciones SQL para crear las tres tablas según las especificaciones proporcionadas.
3. Asegúrate de incluir restricciones como `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL` y `AUTO_INCREMENT` donde corresponda.
4. Guarda y ejecuta el archivo en tu entorno MySQL para verificar que las tablas se crean sin errores.

### Ejemplo de Solución para la Tabla `Departamentos`
```sql
CREATE TABLE Departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_departamento VARCHAR(50) NOT NULL
);
```

Repite un proceso similar para las tablas `Empleados` y `Proyectos`, asegurando que cada columna cumpla con los requisitos y relaciones especificados.

### Notas
- Asegúrate de que el código SQL sea claro y esté bien organizado.
- Prueba cada instrucción en MySQL para confirmar que la estructura de la base de datos se crea correctamente.
