<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="html" />

    <xsl:template match="/ies">

        <html>
            <head>
                <title> Ejercicio 1-3 </title>
            </head>

            <body> 
                <h1> Nombre completo de los ciclos</h1>
                <xsl:apply-templates select="ciclos/ciclo"/>
            </body>
            
        </html>

    </xsl:template>

    <xsl:template match="ciclo">

        <p>  <xsl:value-of select="nombre"/> </p>

    </xsl:template>

</xsl:stylesheet>