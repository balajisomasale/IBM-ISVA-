<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:output method="xml" indent="yes"/> 
 <xsl:template match="/"> 
  <xsl:element name="Bank"> 
   <xsl:element name="name"> 
    <xsl:value-of select="Customer/name"/> 
   </xsl:element>
   <xsl:element name="ID"> 
    <xsl:value-of select="Customer/ID"/> 
   </xsl:element>
   <xsl:element name="amount"> 
    <xsl:value-of select="Customer/amount"/> 
   </xsl:element>
   <xsl:element name="paymentType"> 
    <xsl:value-of select="Customer/paymentType"/> 
   </xsl:element>
   <xsl:element name="paymenyStatus">netbanking payment successful</xsl:element>
    </xsl:element> 
 </xsl:template> 
</xsl:stylesheet>