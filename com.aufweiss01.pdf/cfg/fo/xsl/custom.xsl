<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
  exclude-result-prefixes="xs dita-ot">

  <xsl:template match="*[contains(@class, ' topic/note ')][@type='warning']">
    <xsl:variable name="symbolHref"
                  select="*[contains(@class,' hazard-d/hazardsymbol ')]/@href"/>
    <fo:table xsl:use-attribute-sets="hazardstatement">
      <fo:table-column xsl:use-attribute-sets="hazardstatement.image.column"/>
      <fo:table-column xsl:use-attribute-sets="hazardstatement.content.column"/>
      <fo:table-body>
        <fo:table-row keep-with-next="always">
          <fo:table-cell xsl:use-attribute-sets="hazardstatement.title hazardstatement.title.warning">
            <fo:block>
              <xsl:if test="exists($symbolHref) and $symbolHref != ''">
                <fo:external-graphic
                  src="url('{concat($artworkPrefix, $symbolHref)}')"
                  content-height="1.5em"
                  padding-right="6pt"
                  vertical-align="middle"
                  baseline-shift="baseline"/>
              </xsl:if>
              <fo:inline>
                <xsl:call-template name="getVariable">
                  <xsl:with-param name="id" select="'Warning'"/>
                </xsl:call-template>
              </fo:inline>
            </fo:block>
          </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
          <fo:table-cell xsl:use-attribute-sets="hazardstatement.image">
            <fo:block/>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="hazardstatement.content">
            <xsl:apply-templates select="*[contains(@class,' hazard-d/messagepanel ')]/*"/>
          </fo:table-cell>
        </fo:table-row>
      </fo:table-body>
    </fo:table>
  </xsl:template>

</xsl:stylesheet>