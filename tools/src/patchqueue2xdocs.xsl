<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- @author <a href="mailto:barozzi@nicolaken.com">Nicola Ken Barozzi</a> -->

  <xsl:template match="/">   
  
    <xsl:text disable-output-escaping="yes">
      <![CDATA[
        <!DOCTYPE document PUBLIC "-//APACHE//DTD Documentation V1.0//EN" 
         "dtd/document-v10.dtd">
      ]]>
    </xsl:text>

    <document>
     <header>
      <title>Patch Queue</title>
      <authors>
       <person name="Robin Green" email="greenrd@hotmail.com"/>
       <person name="Nicola Ken Barozzi" email="barozzi@nicolaken.com"/>
      </authors>
     </header>
    
     <body>
    
     <s1 title="Introduction">
    
      <p>
       This is an <strong>informal</strong> list - in chronological order -
       of some of the noteworthy patches that have been posted
       to the <link href="mailto:cocoon-dev@xml.apache.org">cocoon-dev</link> mailing list.
       These patches are not (yet) part of the Apache Cocoon project, but need reviewing for possible
       inclusion. This system was instituted because, due to the large volume of mail and
       the lack of time of the committers, some patches tended to get forgotten about. This
       queue does not guarantee that any patch will be reviewed within a reasonable time frame,
       but it does at least make them easier to find!
      </p>
    
      <p><strong>Reviewers wanted!</strong> - If you have time to review and/or test these patches,
       we would be grateful for your time. Please post comments to the cocoon-dev mailing lists.
      </p>
    
      <p>
       Before submitting a patch, please read the page on <connect href="contrib.xml">Third-Party
       Contributions</connect>. The preferred submission method for patches is:
      </p>
    
      <ul>
       <li>Post to cocoon-dev@xml.apache.org</li>
       <li>Describe the patch, the reason for it and (if necessary) why this is important.</li>
       <li>Generate the patch in <code>diff -u</code> format from CVS</li>
       <li>Also generate a documentation patch or new file, if this is something that should be documented.
       </li>
       <li>Post as an attachment rather than inline (unless it is trivially small).</li>
      </ul>
    
      <p>Following the above guidelines will facilitate your patch being reviewed
       and applied efficiently.</p>
    
     </s1>
    
     <s1 title="Patch Queue">
      
      <p><strong> [Under Construction] </strong> Archive links will be added later.
       <strong>Please do not bother the patch submitters/authors</strong> without first reading the 
        relevant post(s) in the <connect href="mail-archives.xml">mailing list archives.</connect>
      </p>
    
      <p>Vapourware will not be listed.</p>
    
      <table>
       <tr>
        <th>id<!--and Link--></th>
        <th>Summary</th>
        <th>Reviewer</th>
        <th>Resolution</th>
        <th>Status</th>
       </tr>
      <xsl:for-each select="patch-queue/bug">
       <tr>
        <th>
         <connect>
           <xsl:attribute name="href"><xsl:value-of select="@url"/></xsl:attribute>
           <xsl:value-of select="@id"/>
         </connect>
        </th>
        <th><xsl:value-of select="@summary"/></th>
        <th><xsl:value-of select="@owner"/></th>
        <th><xsl:value-of select="@resolution"/></th>
        <th><xsl:value-of select="@status"/></th>
       </tr>
       </xsl:for-each>
      </table>
    
      <p>See also additional list of patches to be added in <connect href="todo.xml">To Do</connect>.
      </p>
    
     </s1>
    </body>
    </document>

  </xsl:template>

  <xsl:template match="@*|*|text()|processing-instruction()">
      <xsl:apply-templates select="@*|*|text()|processing-instruction()"/>
  </xsl:template>

</xsl:stylesheet>
