<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="strona.css" />
                <title><xsl:value-of select="company/metadata/name"/></title>
                
            </head>
            <body>
               
                <div id="strona">
                    <nav>
                        <h1><xsl:value-of select="company/metadata/name"/></h1> 
                        <img id="navlogo" src="Cydr-Sadowski-0-75L.png"/>
                    </nav>
                    <div id="metadata">
                        <h3>Właściciel</h3>
                        <p><xsl:value-of select="company/metadata/fname"/>&#xA0;<xsl:value-of select="company/metadata/sname"/></p>
                    
                        <h3>Kontakt</h3>
                        <p>Telefon: <xsl:value-of select="company/contact/tel"/></p>
                        <p>Mail: <xsl:value-of select="company/contact/mail"/></p>
                        <p>Miasto: <xsl:value-of select="company/contact/city"/></p>
                        <p>Kod pocztowy: <xsl:value-of select="company/contact/code"/></p>
                        <p>Ulica: <xsl:value-of select="company/contact/street"/>&#xA0;<xsl:value-of select="company/contact/nr"/></p>
                    </div>
                    <div id="map">
                    <!--<xsl:variable name="szerokosc" select="company/geolocation/width"/>
                    <xsl:variable name="dlugosc" select="company/geolocation/length"/>-->
                    
                    <div>
                        <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.openstreetmap.org/export/embed.html?bbox=15.236811339855196%2C52.732944389688036%2C15.240241885185243%2C52.73438012390306&amp;layer=mapnik&amp;marker=52.73366226270606%2C15.238526612520218" style="border: 1px solid black"></iframe><br/><small><a href="https://www.openstreetmap.org/?mlat=52.73366&amp;mlon=15.23853#map=19/52.73366/15.23853">Wyświetl większą mapę</a></small>
                    </div>
                        
                    </div>
                    <div id="offerts">
                        <div id="offerts-item">
                            <h3>Offerts: </h3>
                            <ul>
                            <xsl:for-each select="company/offerts/offert">
                                <li><xsl:value-of select="name"/>&#xA0;<xsl:value-of select="price"/></li>
                            
                            </xsl:for-each>
                            </ul>
                        </div>
                        
                    </div>
                    
                    
                </div>
               
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>