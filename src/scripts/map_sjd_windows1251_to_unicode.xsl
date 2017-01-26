<?xml version="1.0"?>
<!--+
    | 
    | compares (ped vs. smenob) and put ped-flags on smenob-entries 
    | Usage: java net.sf.saxon.Transform -it main cfSmeSmj.xsl
    +-->

<!-- java -Xmx2048m net.sf.saxon.Transform -it main cfPED_resources.xsl ped_file=xml/nouns.xml smenob_file=../src/nounCommon_smenob.xml -->
<!-- java -Xmx2048m net.sf.saxon.Transform -it main flagSmenob.xsl ped_file=xml/adjectives.xml smenob_file=../src/adjective_smenob.xml  -->

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
  <xsl:param name="toIndent" select="'default.xml'"/>

  <!-- Output files -->
  <xsl:variable name="outputDir" select="'IndentedDir'"/>
  
  <!-- Patterns for the feature values -->
  <xsl:variable name="output_format" select="'xml'"/>
  <xsl:variable name="e" select="$output_format"/>
  <xsl:variable name="file_name" select="substring-before((tokenize($toIndent, '/'))[last()], '.xml')"/>
  

  <xsl:variable name="a">\'</xsl:variable>
  <xsl:variable name="b">\</xsl:variable>
  <xsl:variable name="ba">\'</xsl:variable>
  <xsl:variable name="bb">\\</xsl:variable>
  <xsl:variable name="bba">\\'</xsl:variable>
  <xsl:variable name="q">\?</xsl:variable>
  
  
  
  <!--     <letter name="" windows_1251_letter="" unicode_letter=""/> -->
  
  
  
  <xsl:template match="/" name="main">
    
    <xsl:choose>
      <xsl:when test="doc-available($toIndent)">
	<xsl:variable name="out">
	  <new_root>
	    <rowdata>
	      <xsl:for-each select="document($toIndent)//ROW">
		<row>
		  <xsl:attribute name="no">
		    <xsl:value-of select="./@NUMBER"/>
		  </xsl:attribute>
		  <xsl:attribute name="word">
		    <xsl:call-template name="windows_to_unicode">
		      <xsl:with-param name="input_text" select="./@WORD"/>
		    </xsl:call-template>
		  </xsl:attribute>
		  <xsl:attribute name="translation">
		    <xsl:call-template name="windows_to_unicode">
		      <xsl:with-param name="input_text" select="./@TRANSLATION"/>
		    </xsl:call-template>
		  </xsl:attribute>
		</row>
	      </xsl:for-each>
	    </rowdata>
	  </new_root>
	</xsl:variable>
	
	<!-- indent document -->
	<xsl:result-document href="{$outputDir}/{$file_name}.{$e}" format="{$output_format}">
	  <xsl:copy-of select="$out"/>
	</xsl:result-document>
	
      </xsl:when>
      <xsl:otherwise>
	<xsl:text>Cannot locate: </xsl:text><xsl:value-of select="$toIndent"/><xsl:text>&#xa;</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template name="windows_to_unicode">
    <xsl:param name="input_text" />

    <xsl:variable name="combi_replaced_input_text">
      <xsl:call-template name="combi_replace_windows_to_unicode">
	<xsl:with-param name="input_text" select="$input_text"/>
      </xsl:call-template>
    </xsl:variable>

    <xsl:value-of  select="replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
			   replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
			   replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
			   replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
			   replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
			   replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
			   replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
			   replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
			   replace(replace(replace(replace($combi_replaced_input_text,
			   concat($bba, 'e0'), 'а'), concat($bba, 'c0'), 'А'), concat($bba, 'e1'), 'б'), concat($bba, 'c1'), 'Б'),
			   concat($bba, 'e2'), 'в'), concat($bba, 'c2'), 'В'), concat($bba, 'e3'), 'г'), concat($bba, 'c3'), 'Г'),
			   concat($bba, 'e4'), 'д'), concat($bba, 'c4'), 'Д'), concat($bba, 'e5'), 'е'), concat($bba, 'c5'), 'Е'),
			   concat($bba, 'b8'), 'ё'), concat($bba, 'a8'), 'Ё'), concat($bba, 'e6'), 'ж'), concat($bba, 'c6'), 'Ж'),
			   concat($bba, 'e7'), 'з'), concat($bba, 'c7'), 'З'), concat($bba, 'e8'), 'и'), concat($bba, 'c8'), 'И'),
			   concat($bba, 'e9'), 'й'), concat($bba, 'c9'), 'Й'), concat($bba, 'ea'), 'к'), concat($bba, 'ca'), 'К'),
			   concat($bba, 'eb'), 'л'), concat($bba, 'cb'), 'Л'), concat($bba, 'ec'), 'м'), concat($bba, 'cc'), 'М'),
			   concat($bba, 'ed'), 'н'), concat($bba, 'cd'), 'Н'), concat($bba, 'ee'), 'о'), concat($bba, 'ce'), 'О'),
			   concat($bba, 'ef'), 'п'), concat($bba, 'cf'), 'П'), concat($bba, 'f0'), 'р'), concat($bba, 'd0'), 'Р'),
			   concat($bba, 'f1'), 'с'), concat($bba, 'd1'), 'С'), concat($bba, 'f2'), 'т'), concat($bba, 'd2'), 'Т'),
			   concat($bba, 'f3'), 'у'), concat($bba, 'd3'), 'У'), concat($bba, 'f4'), 'ф'), concat($bba, 'd4'), 'Ф'),
			   concat($bba, 'f5'), 'х'), concat($bba, 'd5'), 'Х'), concat($bba, 'f6'), 'ц'), concat($bba, 'd6'), 'Ц'),
			   concat($bba, 'f7'), 'ч'), concat($bba, 'd7'), 'Ч'), concat($bba, 'f8'), 'ш'), concat($bba, 'd8'), 'Ш'),
			   concat($bba, 'f9'), 'щ'), concat($bba, 'd9'), 'Щ'), concat($bba, 'fa'), 'ъ'), concat($bba, 'da'), 'Ъ'),
			   concat($bba, 'fb'), 'ы'), concat($bba, 'db'), 'Ы'), concat($bba, 'fc'), 'ь'), concat($bba, 'dc'), 'Ь'),
			   concat($bba, 'fd'), 'э'), concat($bba, 'dd'), 'Э'), concat($bba, 'fe'), 'ю'), concat($bba, 'de'), 'Ю'),
			   concat($bba, 'ff'), 'я'), concat($bba, 'df'), 'Я'), concat($bb, 'u773', $q), '̄'), concat($bb, 'u776', $q), '̈'),
			   concat($bb, 'u1222', $q), 'ӆ'), concat($bb, 'u1221', $q), 'Ӆ'), concat($bb, 'u1230', $q), 'ӎ'), concat($bb, 'u1229', $q), 'Ӎ'),
			   concat($bb, 'u1226', $q), 'ӊ'), concat($bb, 'u1225', $q), 'Ӊ'), concat($bb, 'u1224', $q), 'ӈ'), concat($bb, 'u1223', $q), 'Ӈ'),
			   concat($bb, 'u1167', $q), 'ҏ'), concat($bb, 'u1166', $q), 'Ҏ'), concat($bb, 'u1165', $q), 'ҍ'), concat($bb, 'u1164', $q), 'Ҍ'),
			   concat($bba, 'bc'), 'ј'), concat($bba, 'a3'), 'Ј'),
			   concat($bb, 'lang1033 h', $bb, 'lang1049'), 'һ'), concat($bb, 'lang1033 H', $bb, 'lang1049'), 'Һ')
			   "/>


     </xsl:template>


  <xsl:template name="combi_replace_windows_to_unicode">
    <xsl:param name="input_text" />

    <xsl:value-of  select="replace(replace(replace(replace(replace(replace($input_text,
			   concat($bba, 'e0', $bba, 'u776', $q), 'ӓ'),
			   concat($bba, 'c0', $bba, 'u776', $q), 'Ӓ'),
			   concat($bba, 'fd', $bba, 'u776', $q), 'ӭ'),
			   concat($bba, 'dd', $bba, 'u776', $q), 'Ӭ'),
			   concat($bba, 'e8', $bba, 'u773', $q), 'ӣ'),
			   concat($bba, 'c8', $bba, 'u773', $q), 'Ӣ')
			   "/>
     </xsl:template>

     
   </xsl:stylesheet>

