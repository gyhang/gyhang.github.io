<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html>
<head></head>
<link href="poem.css" rel="stylesheet" type="text/css" />

<body>
	<div class='poems'>	
	<xsl:for-each select="poems/poe">
		<div class='poem'>
		<div class='ti'> 《<xsl:value-of select="@t"/>》 </div>
		<div class='zuo'> 
            <xsl:choose>
                <xsl:when test='@d'><xsl:value-of select='@d'/></xsl:when>
                <xsl:otherwise>唐</xsl:otherwise>
            </xsl:choose>
            .
            <xsl:value-of select="@w"/> </div>
		<div class='nei'>
		<xsl:for-each select="s">
			<p><xsl:value-of select="."/></p>
		</xsl:for-each>
		</div>
		</div>
	</xsl:for-each>
	</div>

    <div class='bott'></div>
    <p>尾块，验证浮动样式清除</p>

</body>	
</html>	
</xsl:template>

</xsl:stylesheet>
