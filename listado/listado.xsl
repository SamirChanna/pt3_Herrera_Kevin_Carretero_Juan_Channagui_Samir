<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Delicias Kitchen</title>
        <link rel='stylesheet' type='text/css' media='screen' href='../css/estilo.css'/>
        <link rel='stylesheet' type='text/css' media='screen' href='../listado/listado.css'/>
      </head>
      <body>
        <div id="wrapper-div">
          <div id="logo-div">
            <img src="/imagenes/delicias.png" alt="Logo"/>
          </div>
          <div id="nav-div">
            <hr id="barra-arriba"/>
            <ul id="opciones">
              <li><a href="../index.html">INICI</a></li>
              <li><a href="#">SOBRE MI</a></li>
              <li><a href="../formulario/form.html">CONTACTE</a></li>
              <li><a href="./listado.xml">LLISTA DE RECEPTES</a></li>
            </ul>
            <hr id="barra-abajo"/>
          </div>
          <div id="main-div" class="fixvacio">
            <div id="sidebar-div">
              <h1 id="sobremi">Sobre mi</h1>
              <img id="imagen-main" src="/imagenes/isagil.png"/>
              <p>
                Hola bienvenid@ a mi blog, un espacio donde quiero compartir mis recetas vegetarianas y veganas favoritas...
              </p>
              <section id="anuncio-section">
                <h1>Suscríbete a mi blog</h1>
                <img id="imagen-anuncio" src="/imagenes/libro.png"/>
                <h2>Y consigue GRATIS mi eBook con 10 recetas exclusivas con superalimentos.</h2>
                <div id="boton-conseguir">
                  <h1><a href="http://ejemplo.com" target="_blank">Apúntame</a></h1>
                </div>
              </section>
            </div>
            <section id="listarecetas">
              <h1 id="titulo">LISTA DE RECETAS</h1>
              <xsl:for-each select="recetas/receta">
                <div>
                  <hr id="separador"/>
                  <a href="{link}">
                    <h2><xsl:value-of select="titulo"/></h2>
                  </a>
                  <img src="{imagen}" alt="{imagen}" />
                  <div id="contenido">
                    <h3>Tiempo de preparación: <xsl:value-of select="tiempoprep"/> minutos</h3>
                    <h3>Dificultad: <xsl:value-of select="dificultad"/></h3>
                  </div>
                  <hr id="separador"/>
                </div>
              </xsl:for-each>
            </section>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
