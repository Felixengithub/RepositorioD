
# Soluciones de Ejercicios de Seguridad de Cuentas y Contraseñas en Unix/Linux


## Ejercicio 1: Establecer políticas de caducidad de contraseñas

En este caso, los valores que deberías haber configurado son:

- `PASS_MAX_DAYS 60`: Las contraseñas deben cambiarse cada 60 días.
- `PASS_WARN_AGE 5`: Los usuarios recibirán una advertencia 5 días antes de que sus contraseñas caduquen.

## Ejercicio 2: Bloqueo y desbloqueo de cuentas

Al bloquear la cuenta de `maria` con el comando `passwd -l maria`, el sistema agregará un signo `!` al inicio del hash de la contraseña en el archivo `/etc/shadow`, lo que impide que el usuario pueda autenticarse.

Para desbloquear la cuenta, usarías el comando `passwd -u maria`, que elimina el signo `!` y restaura el acceso.

## Ejercicio 3: Configuración de políticas de contraseñas seguras

Al configurar el archivo `/etc/pam.d/common-password`, los valores que deberías haber establecido son:

```
password requisite pam_pwquality.so retry=3 minlen=10 ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1
```

Esto exige que las contraseñas tengan al menos:
- 10 caracteres
- 1 letra mayúscula
- 1 letra minúscula
- 1 número
- 1 carácter especial

Si un usuario intenta establecer una contraseña que no cumple con estas reglas, el sistema le pedirá que ingrese una contraseña más segura hasta que cumpla con los requisitos.

## Ejercicio 4: Expiración de cuentas

Usando el comando `chage -E 2025-01-01 juan`, la cuenta de `juan` quedará inhabilitada a partir del 1 de enero de 2025. Una vez que la cuenta expira, el usuario `juan` no podrá iniciar sesión hasta que un administrador elimine la fecha de expiración o extienda su validez.
