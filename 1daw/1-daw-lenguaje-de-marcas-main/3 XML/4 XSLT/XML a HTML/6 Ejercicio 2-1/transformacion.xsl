<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">

 <xsl:output method="html" />

<xsl:template match="/ies">
    <head> 
         <title> Ejercicio 2-1 </title>
    </head>

    <body>
         <h1> <xsl:value-of select="@nombre" />  </h1>
     </body>

     <xsl:apply-templates select="ciclos/ciclo"/>

</xsl:template>

<xsl:template match="ciclo"> 
     <p> <xsl:value-of select="nombre"/> </p>
</xsl:template>

</xsl:stylesheet>

