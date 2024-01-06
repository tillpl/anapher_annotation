<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        Can you please mark every anaphoric expression in bold face 
        "<xsl:for-each select="//s">
            <xsl:value-of select=".//W"/>
        </xsl:for-each>"
    </xsl:template>
</xsl:stylesheet>