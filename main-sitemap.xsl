<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet version="2.0"
	xmlns:html="http://www.w3.org/TR/REC-html40"
	xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
	xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
	xmlns:kml="http://www.opengis.net/kml/2.2"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:atom="http://www.w3.org/2005/Atom">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<xsl:choose>
					<xsl:when test="kml:kml">
						<title>Locations Sitemap - Loyagami Indonesia | Real Asset Based Business Investment</title>
					</xsl:when>
					<xsl:otherwise>
						<title>Peta Situs XML - Loyagami Indonesia | Real Asset Based Business Investment</title>
					</xsl:otherwise>
				</xsl:choose>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
				<style type="text/css">
					body {
						font-size: 14px;
						font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif;
						margin: 0;
						color: #545353;
					}
					a {
						color: #05809e;
						text-decoration: none;
					}
					h1 {
						font-size: 24px;
						font-family: Verdana,Geneva,sans-serif;
						font-weight: normal;
						margin: 0;
					}

					#description {
						background-color: #4275f4;
						padding: 20px 40px;
						color: #fff;
						padding: 30px 30px 20px;
					}
					#description h1,
					#description p,
					#description a {
						color: #fff;
						margin: 0;
						font-size: 1.1em;
					}
					#description h1 {
						font-size: 2em;
						margin-bottom: 1em;
					}
					#description p {
						margin-top: 5px;
					}
					#description a {
						border-bottom: 1px dotted;
					}

					#content {
						padding: 20px 30px;
						background: #fff;
						max-width: 75%;
						margin: 0 auto;
					}
					table {
						border: none;
						border-collapse: collapse;
						font-size: .9em;
						width: 100%;
					}
					th {
						background-color: #4275f4;
						color: #fff;
						text-align: left;
						padding: 15px 10px;
						font-size: 14px;
						cursor: pointer;
					}
					td {
						padding: 10px;
						border-bottom: 1px solid #ddd;
					}
					tbody tr:nth-child(even) {
						background-color: #f7f7f7;
					}
					table td a {
						display: block;
					}
					table td a img {
						max-height: 30px;
						margin: 6px 3px;
					}
				</style>
			</head>
			<body>

				<xsl:choose>
					<xsl:when test="kml:kml">

						<div id="description">

							<h1>File KML</h1>

															<p>
									Berkas KML ini dihasilkan oleh <a href="https://s.rankmath.com/home" target="_blank">Plugin WordPress Rank Math SEO</a>. Ini digunakan untuk memberikan informasi lokasi ke Google.								</p>
							
							<p>
								Pelajari lebih lanjut tentang <a href="https://developers.google.com/kml/documentation/" target="_blank">File KML</a>.							</p>

						</div>

						<div id="content">
							<p class="expl">
								This KML file contains <xsl:value-of select="count(kml:kml/kml:Document/kml:Folder/kml:Placemark)"/> Locations.
							</p>
							<p class="expl">
								<a href="https://www2.loyagami.com/sitemap_index.xml">&#8592; Index Peta Situs</a>							</p>
							<table id="sitemap" cellpadding="3">
								<thead>
									<tr>
										<th width="25%">Nama</th>
										<th width="40%">Alamat</th>
										<th width="15%">Nomor telepon</th>
										<th width="10%">Garis lintang</th>
										<th width="10%">Garis bujur</th>
									</tr>
								</thead>
								<tbody>
									<xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'"/>
									<xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
									<xsl:for-each select="kml:kml/kml:Document/kml:Folder/kml:Placemark">
										<tr>
											<td>
												<xsl:variable name="itemURL">
													<xsl:value-of select="atom:link/@href"/>
												</xsl:variable>
												<a href="{$itemURL}">
													<xsl:value-of select="kml:name"/>
												</a>
											</td>
											<td>
												<xsl:value-of select="kml:address"/>
											</td>
											<td>
												<xsl:value-of select="kml:phoneNumber"/>
											</td>
											<td>
												<xsl:value-of select="kml:LookAt/kml:latitude"/>
											</td>
											<td>
												<xsl:value-of select="kml:LookAt/kml:longitude"/>
											</td>
										</tr>
									</xsl:for-each>
								</tbody>
							</table>
						</div>
					</xsl:when>
					<xsl:otherwise>

						<div id="description">

							<h1>Peta Situs XML</h1>

															<p>
									Peta Situs XML ini dibuat oleh <a href="https://s.rankmath.com/home" target="_blank">Plugin WordPress Rank Math SEO</a>. Inilah yang digunakan oleh mesin pencari seperti Google untuk merayapi dan merayapi kembali posting/halaman/produk/gambar/arsip di situs web Anda.								</p>
							
							<p>
								Pelajari lebih lanjut tentang <a href="http://sitemaps.org/" target="_blank">Peta Situs XML</a>.							</p>

						</div>

						<div id="content">
							<xsl:if test="count(sitemap:sitemapindex/sitemap:sitemap) &gt; 0">

								<p>
									File Indeks XML Sitemap ini berisi <strong><xsl:value-of select="count(sitemap:sitemapindex/sitemap:sitemap)"/></strong> peta situs.								</p>

								<table id="sitemap" cellpadding="3">

									<thead>
										<tr>
											<th width="75%">Peta Situs</th>
											<th width="25%">Terakhir diubah</th>
										</tr>
									</thead>

									<tbody>
										<xsl:for-each select="sitemap:sitemapindex/sitemap:sitemap">
											<xsl:variable name="sitemapURL">
												<xsl:value-of select="sitemap:loc"/>
											</xsl:variable>
											<tr>
												<td>
													<a href="{$sitemapURL}"><xsl:value-of select="sitemap:loc"/></a>
												</td>
												<td>
													<xsl:value-of select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)),concat(' ', substring(sitemap:lastmod,20,6)))"/>
												</td>
											</tr>
										</xsl:for-each>
									</tbody>

								</table>

							</xsl:if>
							<xsl:if test="count(sitemap:sitemapindex/sitemap:sitemap) &lt; 1">
								<p>
									Peta Situs XML ini mengandung <strong><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/></strong> URL.								</p>

								<p class="expl">
									<a href="https://www2.loyagami.com/sitemap_index.xml">&#8592; Index Peta Situs</a>								</p>

								<table id="sitemap" cellpadding="3">

									<thead>
										<tr>
											<th width="75%">URL</th>
											<th width="5%">Gambar</th>											<th title="Last Modification Time" width="20%">Mod Terakhir.</th>
										</tr>
									</thead>

									<tbody>
										<xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'"/>
										<xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
										<xsl:for-each select="sitemap:urlset/sitemap:url">
											<tr>
												<td>
													<xsl:variable name="itemURL">
														<xsl:value-of select="sitemap:loc"/>
													</xsl:variable>
													<a href="{$itemURL}">
														<xsl:value-of select="sitemap:loc"/>
													</a>
												</td>
																								<td>
													<xsl:value-of select="count(image:image)"/>
												</td>
																								<td>
													<xsl:value-of select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)),concat(' ', substring(sitemap:lastmod,20,6)))"/>
												</td>
											</tr>
										</xsl:for-each>
									</tbody>

								</table>

							</xsl:if>
						</div>
					</xsl:otherwise>
				</xsl:choose>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
