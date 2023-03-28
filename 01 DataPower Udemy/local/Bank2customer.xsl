<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:output method="xml" indent="yes"/> 
 <xsl:template match="/"> 
  <xsl:element name="Customer"> 
   <xsl:element name="name"> 
    <xsl:value-of select="Bank/name"/> 
   </xsl:element>
   <xsl:element name="ID"> 
    <xsl:value-of select="Bank/ID"/> 
   </xsl:element>
   <xsl:element name="amount"> 
    <xsl:value-of select="Bank/amount"/> 
   </xsl:element>
   <xsl:element name="Provider"> 
    <xsl:value-of select="Bank/paymentType"/> 
   </xsl:element>
  <xsl:element name="Status"> 
    <xsl:value-of select="Bank/paymenyStatus"/> 
   </xsl:element>
    </xsl:element> 
 </xsl:template> 
</xsl:stylesheet>