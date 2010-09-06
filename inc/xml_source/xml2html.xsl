<?xml version="1.0"?>
<!--+
    | create an html table from the dict
    +-->

<!-- java -Xmx2048m net.sf.saxon.Transform -it main THIS_FILE.xsl inFile= -->

<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xs="http://www.w3.org/2001/XMLSchema"
		xmlns:local="nightbar"
		exclude-result-prefixes="xs local">

  <xsl:strip-space elements="*"/>
  <xsl:output method="xml" name="xml"
              encoding="UTF-8"
	      omit-xml-declaration="no"
	      indent="yes"/>

  
  <!-- Input files -->
  <xsl:param name="inFile" select="'default.xml'"/>

  <!-- Output dir, files -->
  <xsl:variable name="outputDir" select="'html_out'"/>
  <!-- use only the first translation -->
  
  <!-- Patterns for the feature values -->
  <xsl:variable name="output_format" select="'xml'"/>
  <xsl:variable name="e" select="$output_format"/>
  <xsl:variable name="file_name" select="substring-before((tokenize($inFile, '/'))[last()], '.xml')"/>
  
  <xsl:template match="/" name="main">
    <xsl:choose>
      <xsl:when test="doc-available($inFile)">
	<xsl:variable name="out_tmp">
	  <table>
<!-- 	    <xsl:attribute name="xml:lang"> -->
<!-- 	      <xsl:value-of select="$srcl"/> -->
<!-- 	    </xsl:attribute> -->
	    <!-- to generalize -->
	    <xsl:for-each select="doc($inFile)/lexicon/entry">
	      <tr>
		<td>
		  <xsl:value-of select="normalize-space(./lemma/text())"/>
		</td>
		<td>
		  <xsl:for-each select="./translations/tr[@xml:lang ='rus']">
		    <xsl:value-of select="concat(normalize-space(.), ';', '&#x20;')"/>
		  </xsl:for-each>
		</td>
	      </tr>
	      <tr class="rand">
		<td> 
		  <xsl:value-of select="'&#x20;'"/>
		</td>
	      </tr>
	    </xsl:for-each>
	  </table>
	</xsl:variable>
	
	
	<!-- out -->
	<xsl:result-document href="{$outputDir}/html_{$file_name}.{$e}" format="{$output_format}">
	  <xsl:copy-of select="$out_tmp"/>
	</xsl:result-document>

      </xsl:when>
      <xsl:otherwise>
	<xsl:text>Cannot locate: </xsl:text><xsl:value-of select="$inFile"/><xsl:text>&#xa;</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>


