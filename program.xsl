<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>

<head>

<title>Crescent Playhouse Restaurant Menu</title>

<style>
body{
    font-family:Arial;
    background:#1A2238;
    color:white;
    padding:30px;
}

h1{
    color:#A5D8FF;
}

table{
    width:100%;
    border-collapse:collapse;
    background:white;
    color:black;
}

th{
    background:#A5D8FF;
    padding:12px;
}

td{
    border:1px solid black;
    padding:10px;
}

tr:nth-child(even){
    background:#EEEEEE;
}

a{
    color:white;
}
</style>

</head>

<body>

<h1>Crescent Playhouse Restaurant Menu:</h1>

<p>
    Welcome to The Crescent Playhouse Restaurant, where great food and theatre come together 
    to create a memorable experience. Our carefully selected menu offers a variety of dishes 
    made with fresh ingredients, from delicious starters and satisfying main courses to 
    indulgent desserts and refreshing drinks. 

    Whether you are visiting before a show, enjoying a special evening with friends and family,
    or simply looking for a relaxing dining experience, our restaurant provides a warm and 
    welcoming atmosphere. We take pride in serving quality meals that complement every visit 
    to The Crescent Playhouse.
</p>

<table border="1">

<tr>
    <th>Name</th>
    <th>Category</th>
    <th>Description</th>
    <th>Price</th>
</tr>
    
<xsl:for-each select="/theatreMenu/menuItem">

<tr>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="category"/></td>
    <td><xsl:value-of select="description"/></td>
    <td><xsl:value-of select="price"/></td>
</tr>
    
</xsl:for-each>

</table>

<br/>

<a href="index.html">Back to Home Page</a>

</body>

</html>

</xsl:template>

</xsl:stylesheet>