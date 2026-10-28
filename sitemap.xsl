<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sm="http://www.sitemaps.org/schemas/sitemap/0.9"
  exclude-result-prefixes="sm">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <title>Sitemap — Horizon Technologys</title>
        <style>
          body { font-family: Georgia, 'Times New Roman', serif; color: #1a1a1a; max-width: 720px; margin: 3rem auto; padding: 0 1.25rem; line-height: 1.6; }
          h1 { font-size: 1.6rem; font-weight: normal; margin-bottom: 0.25rem; }
          p.sub { color: #555; margin-top: 0; }
          ul { list-style: none; padding: 0; }
          li { padding: 0.6rem 0; border-bottom: 1px solid #e5e5e5; }
          a { color: #1a1a1a; text-decoration: none; border-bottom: 1px solid #999; }
          .date { color: #777; font-size: 0.85rem; margin-left: 0.5rem; }
        </style>
      </head>
      <body>
        <h1>Sitemap</h1>
        <p class="sub">Horizon Technologys — every page on this site.</p>
        <ul>
          <xsl:for-each select="sm:urlset/sm:url">
            <li>
              <a href="{sm:loc}"><xsl:value-of select="sm:loc"/></a>
              <span class="date">Updated <xsl:value-of select="sm:lastmod"/></span>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
