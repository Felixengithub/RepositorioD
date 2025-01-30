<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Estadísticas INE</title>       
      </head>
      <body>
        <h1>Estadísticas por Provincia</h1>
        <cite>sadasdasd</cite>
        <table>
          <thead>
            <tr>
              <th>Provincia</th>
              <th>Población Total</th>
              <th>Población Hombres</th>
              <th>Población Mujeres</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="/estadisticas/datos/provincia">
              <tr>
                <td><xsl:value-of select="@nombre"/></td>
                <td><xsl:value-of select="poblacion_total"/></td>
                <td><xsl:value-of select="poblacion_hombres"/></td>
                <td><xsl:value-of select="poblacion_mujeres"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
