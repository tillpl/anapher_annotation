<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="2.0">
    <xsl:output method="html" html-version="5" indent="yes"/>
    
    <xsl:template match="/">
        <ul>
            <li>In the following I give you the classifications of an expert on anaphors. Please learn how it is done correctly. It is all noun phrases in parentheses in the order as they can be found in the text. Every phrase is assigned an ID. After the assignments you will find specification on whether a particular noun phrase is an anaphoric expression or not.
            </li>
                <xsl:for-each select="//ne">
                    <li>"<xsl:value-of select="normalize-space(.)"/>" = <xsl:value-of select="./@id"/></li>
                </xsl:for-each>
                <xsl:for-each select="//ne">
                    <xsl:choose>
                        <xsl:when test="./@id= //PDante[interpretation[anchor[@user_id='e99']/@type = 'DO']]/@id">
                            <li><xsl:value-of select="./@id"/> is an anaphoric expression</li>
                        </xsl:when>
                        <xsl:otherwise><li><xsl:value-of select="./@id"/> is not an anaphoric expression</li></xsl:otherwise>
                    </xsl:choose>
                    <!--<xsl:choose>
                        <xsl:when test="./@id= //PDante/interpretation/anchor[@user_id='e99']/@ante">
                            <li><xsl:value-of select="./@id"/> is the antecedent of an anaphoric expression</li>
                        </xsl:when>
                        <xsl:otherwise><li><xsl:value-of select="./@id"/> is not an antecedent of an anaphoric expression</li></xsl:otherwise>
                    </xsl:choose>
              --></xsl:for-each><!--
                <xsl:for-each select="//PDante">
                    <xsl:choose>
                        <xsl:when test=".//anchor[@user_id='e99']/@type='DO'">
                            <li><xsl:value-of select="./@id"/> refers to <xsl:value-of select="string-join(.//anchor[@user_id='e99' and @type='DO']/@ante, ' and ')"/></li>
                        </xsl:when>
                    </xsl:choose>
                </xsl:for-each> Comment -->
        </ul>
    </xsl:template>
</xsl:stylesheet>