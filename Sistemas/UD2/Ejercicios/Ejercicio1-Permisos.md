Parte 1: Gestión de Permisos con chmod

Crea un archivo llamado mi_script.sh en tu directorio personal.

Usa el comando touch para crearlo.

touch mi_script.sh

Otorga permiso de lectura, escritura y ejecución solo para el propietario del archivo. Asegúrate de que el grupo y otros usuarios no tengan ningún permiso sobre el archivo.

chmod 700 mi_script.sh


Ahora, cambia los permisos para que:

El grupo tenga permiso de lectura y ejecución.
Los otros usuarios tengan solo permiso de lectura.

chmod 754 mi_script.sh


Utiliza el comando ls -l para verificar los permisos de tu archivo y confirma que son correctos.

ls -l mi_script.sh


Parte 2: Gestión de Propiedad con chown y chgrp

Crea un nuevo archivo llamado reporte.txt.

touch reporte.txt

Cambia el propietario de este archivo a otro usuario de tu sistema (puedes elegir el nombre del usuario o simularlo si no tienes permisos de superusuario en tu entorno).

sudo chown otro_usuario reporte.txt


Cambia el grupo de reporte.txt al grupo staff.

sudo chgrp staff reporte.txt


Verifica los cambios de propiedad y grupo usando ls -l.

ls -l reporte.txt

SOl:
-rw-r--r-- 1 otro_usuario staff tamaño fecha reporte.txt


Parte 3: Combinación de chmod, chown y chgrp

Crea un archivo llamado proyecto.sh.

touch proyecto.sh


Asigna este archivo a un nuevo propietario (elige un usuario en tu sistema o simúlalo).

sudo chown nuevo_usuario proyecto.sh


Cambia el grupo de este archivo a administradores.

sudo chgrp adm proyecto.sh

Establece los permisos de manera que:

El propietario tenga permisos de lectura, escritura y ejecución.
El grupo tenga permisos de lectura y ejecución.
Otros usuarios no tengan ningún permiso.

chmod 750 proyecto.sh

Confirma los permisos, propietario y grupo con ls -l.

ls -l proyecto.sh

SOL:

-rwxr-x--- 1 nuevo_usuario adm tamaño fecha proyecto.sh

