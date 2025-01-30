
# Ejercicio de validación XML con XSD (Digimon)

### Enunciado:

Tienes que crear un archivo XML que describa una colección de Digimon. Cada Digimon debe incluir varios elementos y atributos, que serán validados mediante un archivo XSD. Sigue las instrucciones y restricciones para completar el ejercicio correctamente. Debe incluir al menos 2 digimon

### Parte 1: Estructura XML

Debes crear un archivo XML que incluya los siguientes elementos para cada Digimon:

1. **name**: El nombre del Digimon (ejemplo: "Agumon").
2. **id**: Un identificador único que debe seguir el formato "XX-9999", donde "XX" son letras mayúsculas y "9999" son dígitos (ejemplo: "DG-0001").
3. **type**: El tipo de Digimon, que puede ser uno de los siguientes valores: `Virus`, `Vaccine`, `Data`.
4. **level**: El nivel de evolución del Digimon, que debe ser uno de los siguientes valores: `Rookie`, `Champion`, `Ultimate`, `Mega`.
5. **abilities**: Una lista de habilidades (al menos una) que tiene el Digimon.
6. **baseStats**: Los valores de HP, ATK y DEF del Digimon, que deben ser números enteros dentro de los siguientes rangos:
    - HP: Entre 1 y 999
    - ATK: Entre 1 y 500
    - DEF: Entre 1 y 400
7. **registrationDate**: La fecha de registro del Digimon en formato `YYYY-MM-DD`.
8. **legendary**: Este elemento es opcional, y solo debe aparecer si el Digimon es legendario.

### Parte 2: Validación mediante XSD

Para validar el archivo XML, debes usar un archivo XSD que imponga las siguientes restricciones:

1. El identificador `id` debe seguir el patrón `XX-9999`.
2. El tipo de Digimon `type` debe ser uno de los siguientes valores: `Virus`, `Vaccine`, `Data`.
3. El nivel de Digimon `level` debe ser uno de los siguientes valores: `Rookie`, `Champion`, `Ultimate`, `Mega`.
4. El valor de `HP` debe ser un número entero entre 1 y 999.
5. El valor de `ATK` debe ser un número entero entre 1 y 500.
6. El valor de `DEF` debe ser un número entero entre 1 y 400.
7. La fecha de registro `registrationDate` debe seguir el patrón de fecha `YYYY-MM-DD`.
8. El elemento `legendary` es opcional.

### Ejemplo de Archivo XML:

```xml
<digidex xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:noNamespaceSchemaLocation="digimon.xsd">
    <digimon>
        <name>Agumon</name>
        <id>DG-0001</id>
        <type>Vaccine</type>
        <level>Rookie</level>
        <abilities>
            <ability>Pepper Breath</ability>
            <ability>Spitfire Blast</ability>
        </abilities>
        <baseStats>
            <HP>100</HP>
            <ATK>70</ATK>
            <DEF>50</DEF>
        </baseStats>
        <registrationDate>2024-01-01</registrationDate>
    </digimon>
</digidex>
```

