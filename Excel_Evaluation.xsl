<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" html-version="5" indent="yes"/>
    
    <xsl:template match="/">
        <ul>
            <li>Number of anaphors: <xsl:value-of select="count(//anchor[@user_id='e99' and @type='DO'])"/></li>
            <li></li>
        </ul>
        <ul>
            <xsl:for-each select="//ne">
                <li><xsl:value-of select="ancestor::s/@id"/>/<xsl:value-of select="./@id"/>: <xsl:value-of select="normalize-space(.)"/></li>
                <xsl:choose>
                    <xsl:when test="./@id= //PDante[interpretation[anchor[@user_id='e99']/@type = 'DO']]/@id">
                        <li><xsl:value-of select="ancestor::s/@id"/>/<xsl:value-of select="./@id"/> anaphoric </li>
                    </xsl:when>
                    <xsl:otherwise><li><xsl:value-of select="ancestor::s/@id"/>/<xsl:value-of select="./@id"/> no_ana </li></xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                    <xsl:when test="./@id= //PDante/interpretation/anchor[@user_id='e99']/@ante">
                        <li><xsl:value-of select="ancestor::s/@id"/>/<xsl:value-of select="./@id"/> antecedent </li>
                    </xsl:when>
                    <xsl:otherwise><li><xsl:value-of select="ancestor::s/@id"/>/<xsl:value-of select="./@id"/> no_ant </li></xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
            <xsl:for-each select="//PDante">
                <xsl:choose>
                    <xsl:when test=".//anchor[@user_id='e99' and @type='DO']">
                        <li><xsl:value-of select="./@id"/> refers to <xsl:value-of select="string-join(.//anchor[@user_id='e99' and @type='DO']/@ante, ' and ')"/></li>
                    </xsl:when>
                    <xsl:otherwise><li><xsl:value-of select="./@id"/> no_ref </li></xsl:otherwise>
                </xsl:choose>
                <li><xsl:value-of select="./@id"/></li>
                <li><xsl:value-of select="./@id"/></li>
            </xsl:for-each>
        </ul>
    </xsl:template>
    
</xsl:stylesheet>