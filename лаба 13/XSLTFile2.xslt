<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>
					Students
				</title>
			</head>
			<body>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>name</th>
						<th>math</th>
						<th>hist</th>
						<th>rus</th>
					</tr>
					<xsl:for-each select="Students/student">
						<tr>
							<td>
								<xsl:value-of select="name"/>
							</td>
								<xsl:choose>
									<xsl:when test="math &gt; 8 ">
										<td bgcolor="green">
											<xsl:value-of select="math"/>
										</td>
									</xsl:when>
									<xsl:when test="math &lt; 4 ">
										<td bgcolor="red">
											<xsl:value-of select="math"/>
										</td>
									</xsl:when>
									<xsl:otherwise>
										<td>
											<xsl:value-of select="math"/>
										</td>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="hist &gt; 8 ">
										<td bgcolor="green">
											<xsl:value-of select="hist"/>
										</td>
									</xsl:when>
									<xsl:when test="hist &lt; 4 ">
										<td bgcolor="red">
											<xsl:value-of select="hist"/>
										</td>
									</xsl:when>
									<xsl:otherwise>
										<td>
											<xsl:value-of select="hist"/>
										</td>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="rus &gt; 8 ">
										<td bgcolor="green">
											<xsl:value-of select="rus"/>
										</td>
									</xsl:when>
									<xsl:when test="rus &lt; 4 ">
										<td bgcolor="red">
											<xsl:value-of select="rus"/>
										</td>
									</xsl:when>
									<xsl:otherwise>
										<td>
											<xsl:value-of select="rus"/>
										</td>
									</xsl:otherwise>
								</xsl:choose>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
