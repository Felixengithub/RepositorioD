
# Instrucciones para Instalar MySQL y Ejecutar un Archivo SQL en Visual Studio Code

## Paso 1: Descargar e Instalar MySQL

1. Ve a la página de descargas de MySQL: [https://dev.mysql.com/downloads/installer/](https://dev.mysql.com/downloads/installer/).
2. Descarga el instalador de MySQL: elige la opción "MySQL Installer for Windows" (archivo de aproximadamente 2 MB).
3. Abre el instalador descargado y selecciona el tipo de instalación. **FULL** es la opción recomendada, ya que instalará MySQL Server, MySQL Workbench, y otras herramientas útiles.
4. Finaliza la instalación haciendo clic en **Execute** para instalar los componentes seleccionados y configurar el servidor.
5. Durante la configuración del servidor:
   - Configura el puerto de red como `3306` (puerto estándar para MySQL).
   - Define una contraseña para el usuario `root` (administrador).

## Paso 1.5: Configurar MySQL

### Agregar MySQL a la Variable de Entorno PATH

1. Haz clic derecho en *Este equipo* o *Mi PC* en el Explorador de Archivos y selecciona **Propiedades**.
2. En el panel izquierdo, selecciona **Configuración avanzada del sistema**.
3. En la ventana de *Propiedades del sistema*, haz clic en el botón **Variables de entorno**.
4. En la sección *Variables del sistema*, busca la variable llamada `Path` y selecciona **Editar**.
5. Haz clic en **Nuevo** y pega la ruta de la carpeta `bin` de MySQL, que debería verse algo así:
   
   ```plaintext
   C:\Program Files\MySQL\MySQL Server 8.0\bin
   ```

6. Haz clic en **Aceptar** en todas las ventanas para guardar los cambios.

### Crear una base de datos

1. Abre el símbolo del sistema (CMD) en Windows o una terminal.
2. Conéctate al servidor MySQL usando el siguiente comando:

   ```bash
   mysql -u root -p
   ```

   Ingresa la contraseña para el usuario `root` cuando te la solicite.

3. Una vez dentro del cliente MySQL, crea la base de datos ejecutando:

   ```sql
   CREATE DATABASE nombre_base_de_datos;
   ```

   Sustituye `nombre_base_de_datos` por el nombre que desees.

4. Para verificar que la base de datos se ha creado correctamente, ejecuta:

   ```sql
   SHOW DATABASES;
   ```

5. Sal de MySQL escribiendo `exit`.

## Paso 2: Configurar Visual Studio Code para Ejecutar SQL

### Instalar la Extensión SQLTools

1. Abre **Visual Studio Code**.
2. Ve a la sección de **Extensiones** (icono de cuadro en la barra lateral izquierda).
3. Busca **SQLTools** y haz clic en **Instalar**. Esta extensión permite ejecutar consultas SQL directamente desde Visual Studio Code.
4. Busca **SQLTools MySQL/MariaDB/TiDB** y haz clic en **Instalar**.

### Configurar la Conexión a MySQL en SQLTools

1. Abre el panel de **SQLTools** desde la barra lateral izquierda (ícono de base de datos).
2. Haz clic en **Add New Connection**.
3. Selecciona **MySQL** como el tipo de conexión.
4. Configura los detalles de la conexión:
   - **Connection Name**: Un nombre descriptivo (e.g., "Mi conexión MySQL").
   - **Server**: Generalmente es "localhost" si instalaste MySQL en tu máquina local.
   - **Port**: `3306` (o el puerto que configuraste durante la instalación de MySQL).
   - **Username** y **Password**: Ingresa las credenciales de tu base de datos (el usuario será `root` y la contraseña la que configuraste en la instalación). Ponlo como STORE AS PLAIN TEXT
   - **Database**: Puedes dejarlo vacío o especificar una base de datos si ya la has creado.

5. Haz clic en **Save Connection** para guardar la configuración.

### Conectarse a la Base de Datos

- En el panel de SQLTools, haz clic en la conexión que creaste para conectarte a MySQL.
- Si la conexión es exitosa, verás el nombre de la base de datos en la lista de conexiones activas.

## Paso 3: Ejecutar un Archivo SQL en Visual Studio Code

1. Abre el archivo SQL que deseas ejecutar (por ejemplo, `empresa.sql`).
2. Con el archivo abierto, selecciona la base de datos en la que quieres ejecutar el código.
3. Haz clic derecho en el editor y selecciona **Run Query** (o usa el comando de SQLTools para ejecutar el script).
4. SQLTools ejecutará las instrucciones en el archivo y creará las tablas o ejecutará las consultas en tu base de datos MySQL.

### Verificar las Tablas

Para asegurarte de que las tablas se crearon correctamente, ejecuta el siguiente comando en el editor:

   ```sql
   SHOW TABLES;
   ```
