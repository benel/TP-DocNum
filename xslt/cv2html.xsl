<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="cv">
  <html>
    <body>
      <h1>
        <xsl:value-of select="prenom" /> <xsl:value-of select="nom" /> :
        <xsl:value-of select="intitule" />
      </h1>
      <h2>Formation</h2>
      <xsl:apply-templates select="evenement[@type='formation']" />
      <h2>Expérience</h2>
      <xsl:apply-templates select="evenement[@type='experience']">
        <xsl:sort select="@anneeDebut" data-type="number" order="descending" />
      </xsl:apply-templates>
    </body>
  </html>
</xsl:template>

<xsl:template match="evenement">
  <h3>
        <xsl:value-of select="@anneeDebut" /> –
        <xsl:value-of select="@anneeFin" />
  </h3>
  <p>
    <xsl:value-of select="institution" />
  </p>
  <p>
    <xsl:value-of select="intitule" />
  </p>
  <p>
    <xsl:value-of select="detail" />
  </p>
</xsl:template>

</xsl:stylesheet>
