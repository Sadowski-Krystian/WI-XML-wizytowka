<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="wizytowka.css" />
                <title><xsl:value-of select="company/metadata/name"/></title>
                
            </head>
            <body>
               
                <h1>Przód wizytówki</h1>
                <div id="przod">
                    <h1 id="pname"><xsl:value-of select="company/metadata/name"/></h1> 
                    <p id="adress"><xsl:value-of select="company/contact/city"/>&#xA0;<xsl:value-of select="company/contact/street"/>&#xA0;<xsl:value-of select="company/contact/nr"/></p>
                    <p id="kontakt">tel: <xsl:value-of select="company/contact/tel"/><br/> Meil: <xsl:value-of select="company/contact/mail"/></p>
                    <img id="cydr" src="Cydr-Sadowski-0-75L.png"/>
                </div>
                <h1>Tył wizytówki</h1>
                <div id="tyl">
                    <h1 id="owner"><xsl:value-of select="company/metadata/fname"/>&#xA0;<xsl:value-of select="company/metadata/sname"/></h1>
                    <img id="logo" src="Cydr-Sadowski-0-75L.png"/>
                    <ul id="list">
                        <xsl:for-each select="company/offerts/offert">
                            <li><xsl:value-of select="name"/>&#xA0;<xsl:value-of select="price"/></li>
                        
                        </xsl:for-each>
                    </ul>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>