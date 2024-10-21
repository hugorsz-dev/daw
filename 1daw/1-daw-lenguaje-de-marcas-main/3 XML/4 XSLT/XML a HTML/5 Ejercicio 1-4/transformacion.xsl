<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="html" />

    <xsl:template match="/ies">
    <html>
        <head> 
            <title> Ejercicio 1-4 </title>
        </head>

        <body> 
            <h1> Tabla con los ciclos </h1>
            <table border = "1">
                <tr> <th> Ciclos </th> </tr>
                <xsl:apply-templates select="ciclos/ciclo"/> 
                
            </table>
        </body>
    </html> 

    </xsl:template>

    <xsl:template match="ciclo">
      <tr> <td>  <xsl:value-of select="nombre"/> </td> </tr>  
    </xsl:template>

</xsl:stylesheet>
