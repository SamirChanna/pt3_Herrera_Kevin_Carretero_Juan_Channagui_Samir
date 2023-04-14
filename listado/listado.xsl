<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <tittle>Recetas</tittle>
                <link rel="stylesheet" type="text/css" href="/css/recetas.css"/>
            <head/>
            <body>
                <xsl:apply-templates select="recetas/receta"/>
            </body>
        
        </html>
    </xsl:template>

    <xsl:template match="receta">
        <div class="receta">
            <h1>
                <xsl:value-of select="titulo"/>
            </h1>
            <h2>
                <xsl:value-of select="fecha"/>
            </h2>
            <p>
                <xsl:value-of select="descripcion"/>
            </p>
            <img src="{imagen}" alt="{titulo}"/>
        </div>
    </xsl:template>

</xsl:stylesheet>