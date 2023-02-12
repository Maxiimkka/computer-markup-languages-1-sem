<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<head>
			<title>
				exam
			</title>
		</head>
		<body>
			<table border="1">
				<tr bgcolor="#9acd32">
					<th>name</th>
					<td>date</td>
					<td>time</td>
				</tr>
				<xsl:for-each select="exam/subject">
					<tr bgcolor="#239ccc">
						<td>
							<xsl:value-of select="name"/>
						</td>
						<td>
							<xsl:value-of select="date"/>
						</td>
						<td>
							<xsl:value-of select="time"/>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
    
