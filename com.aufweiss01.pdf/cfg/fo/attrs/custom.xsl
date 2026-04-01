<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:attribute-set name="common.title">
    <xsl:attribute name="color">#FF0000</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="hazardstatement.content">
    <xsl:attribute name="keep-together">auto</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="hazardstatement">
    <xsl:attribute name="keep-together.within-page">always</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="sl">
    <!--
    <xsl:attribute name="provisional-distance-between-starts">10mm</xsl:attribute>
    -->
    <xsl:attribute name="provisional-label-separation">2mm</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="sli">
    <xsl:attribute name="space-after">2pt</xsl:attribute>
  </xsl:attribute-set>

</xsl:stylesheet>