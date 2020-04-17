<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : change.xsl
    Created on : 12 de abril de 2020, 22:36
    Author     : julenmarrero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common" 
                version="1.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:key name="country" match="record" use="countriesAndTerritories"/>
    <xsl:template match="/records">
        <recods>
            <xsl:apply-templates select="record[generate-id() = generate-id(key('country', countriesAndTerritories)[1])]"/>
        </recods>
        
    </xsl:template>
    
    <xsl:template match="record">
        <xsl:variable name="this_country" select="countriesAndTerritories"/>
        <records>
            <country>
                <xsl:value-of select="$this_country"/>
            </country>
            <deaths>
                <xsl:value-of select="sum(//record[countriesAndTerritories=$this_country]/deaths)"/>
            </deaths>
            <cases>
                <xsl:value-of select="sum(//record[countriesAndTerritories=$this_country]/cases)"/>
            </cases>
            <territory_code>
                <xsl:value-of select="countryterritoryCode"/>
            </territory_code> 
        </records>
    </xsl:template>
</xsl:stylesheet>


  <!--       <percentage>
                <xsl:value-of select="format-number(number( (sum(//record[countriesAndTerritories=$this_country]/cases) div sum(//record[countriesAndTerritories=$this_country]/deaths)) *10),'###,###,##0.00')"/>
            </percentage>-->