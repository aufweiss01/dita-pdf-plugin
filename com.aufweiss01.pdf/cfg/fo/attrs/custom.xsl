<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:attribute-set name="common.title">
    <xsl:attribute name="color">#FF0000</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="hazardstatement">
    <xsl:attribute name="border">1pt solid red</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="hazardstatement.title">
    <xsl:attribute name="border">1pt solid blue</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="hazardstatement.image">
    <xsl:attribute name="border">1pt solid green</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="hazardstatement.content">
    <xsl:attribute name="border">1pt solid orange</xsl:attribute>
  </xsl:attribute-set>

</xsl:stylesheet>