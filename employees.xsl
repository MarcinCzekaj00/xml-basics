<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
	<meta charset="utf-8"/>
	<title>Employees</title>
	<link rel="stylesheet" href="Employees.css" type="text/css" />
</head>
<body>
	<h1> Employees: </h1>
	<table>
		<tr>
			<th><xsl:attribute name="bgcolor">#ffffff</xsl:attribute>Full name</th>
			<th><xsl:attribute name="bgcolor">#ffffff</xsl:attribute>First name</th>
			<th><xsl:attribute name="bgcolor">#ffffff</xsl:attribute>Surname</th>
			<th><xsl:attribute name="bgcolor">#ffffff</xsl:attribute>Picture of Employee</th>
			<th><xsl:attribute name="bgcolor">#ffffff</xsl:attribute>Email</th>
			<th><xsl:attribute name="bgcolor">#ffffff</xsl:attribute>Phone</th>
			<th><xsl:attribute name="bgcolor">#ffffff</xsl:attribute>Reward</th>
		</tr>
		<xsl:for-each select="/Employees/Employee">
			<tr>
				<td><xsl:attribute name="bgcolor">#e6ffff</xsl:attribute><xsl:value-of select="name[@type='full_name']"/></td>
				<td><xsl:attribute name="bgcolor">#ccffff</xsl:attribute><xsl:value-of select="name[@type='first_name']"/></td>
				<td><xsl:attribute name="bgcolor">#b3ffff</xsl:attribute><xsl:value-of select="name[@type='surname']"/></td>
				<td class="obr"><xsl:attribute name="bgcolor">#e6ffff</xsl:attribute><img><xsl:attribute name="src"><xsl:value-of select="picture/a/@href"/></xsl:attribute></img></td>
				<td><xsl:attribute name="bgcolor">#99ffff</xsl:attribute><xsl:value-of select="email"/></td>
				<td><xsl:attribute name="bgcolor">#66ffff</xsl:attribute><xsl:value-of select="phone"/></td>
				<td><xsl:attribute name="bgcolor">#33ffff</xsl:attribute><xsl:value-of select="reward"/></td>
			</tr>
		</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>