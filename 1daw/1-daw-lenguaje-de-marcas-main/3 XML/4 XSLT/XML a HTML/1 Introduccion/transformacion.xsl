<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="html" /> <!-- Declaración de tipo de archivo a exportar --> 

    <xsl:template match="/precipitaciones"> <!-- Plantilla para las precipitaciones . El atributo match vincula una consulta XPATH. --> 
        <!-- ANOTACIÓN: la línea de las plantillas es totalmente ESTRUCTURAL: es decir, si ya se ha escrito "/precipitaciones", el XPATH que le sigue debe continuar con registro... --> 
    <html>
            <head>
                <title>Listado de precipitaciones</title>
            </head>
            <body>
                <h2>Registros de precipitaciones</h2>
                <ul>
                    <xsl:apply-templates select="registro"/> <!-- Los elementos del "ul" se aplican según la plantilla de registro --> 
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="registro"> <!-- Plantilla para el registro --> 
        <li>
            <b>
                <xsl:value-of select="lugar" /> <!-- Valor de etiqueta lugar en negrita --> 
                <xsl:text>:</xsl:text> <!-- Texto que aparecerá en pantalla --> 
            </b>
            <xsl:value-of select="fecha" /> <!-- Valor de fecha dentro del elemento registro -->
            <xsl:text>(</xsl:text>
            <xsl:value-of select="litros-m2" /> <!-- Valor de litros-m2 dentro del elemento registro -->
            <xsl:text> l/m2)</xsl:text>
        </li>
    </xsl:template>

</xsl:stylesheet>