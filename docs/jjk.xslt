<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:cbml="http://www.cbml.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
  
<xsl:variable name="cbml-collection" as="document-node()+" select="collection('cbml/?select=*.xml')"/>

    <xsl:template match="teiHeader">
       <html>
           <head>
               <title>xslt for jjk</title>
               <link rel="stylesheet" type="text/css" href="style.css"/> 
           </head>
           <body>
         
           </body>
       </html>
   </xsl:template> 
    
    <xsl:template match="div[@type='page']">
        <section class="{@type}" id="{@xml:id}">
            <xsl:apply-templates/>

        </section>
    </xsl:template>
    
    <xsl:template match="h2">
        <span class="{name()}" style="color:green">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="h3">
        <span class="{name()}" style="color:blue">
            <xsl:apply-templates/>
        </span>  
    </xsl:template>
    
    <xsl:template match="h1">
        <span class="{name()}" style="color:red">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
  
</xsl:stylesheet>