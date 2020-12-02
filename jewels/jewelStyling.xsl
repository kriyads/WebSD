<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
            div
            {
                text-align:center; 
                width:48%;
                border:2px solid black;
            }
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center !important;
            }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">Jewels Online Mart</h1>
                    <h2><center><u>List of Products</u></center></h2>
                    <table border="2" align="center">
                        <tr bgcolor="#72dd78">
                            <th>S_No</th>
                            <th>Prod_ID</th>
                            <th>Category</th>
                            <th>Metal</th>
                            <th>Gemstone</th>
                            <th>Price</th>
                        </tr>
                        <xsl:for-each select="Jewellery/Jewels">
                            <tr>
                                <td>
                                    <xsl:value-of select="S_No"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Prod_ID"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Category"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Metal"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Gemstone"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Price"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
