<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                xmlns="otherchartCOVID.xml"
                version="1.0">
                
    <!-- espacio de nombre del otherchartCovid...-->
                
                
    <xsl:output method="html"/>

    
    <xsl:template match="/recods">
        <html>
            <head>
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

                <!-- jQuery library -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

                <!-- Popper JS -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

                <!-- Latest compiled JavaScript -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
                <link rel="stylesheet" src="css/"/>
                <title>COVID-DATA</title>
            </head>
       
            <body>
                <h2 style="text-align:center">COVID-19 worldwide data</h2>
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th style="text-align:center color: #33cc33">País</th>
                            <th style="text-align:center color: #33cc33">Code</th>
                            <th style="text-align:center color: #33cc33">Casos</th>
                            <th style="text-align:center color: #33cc33">Muertes</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="records">
                            <tr>
                                <th style="text-align:center">
                                    <xsl:value-of select="country"/>
                                </th>
                                <th>
                                    <xsl:value-of select="territory_code"/>
                                </th>
                                <th>
                                    <xsl:value-of select="cases"/>
                                </th>  
                                <th>
                                    <xsl:value-of select="deaths"/>
                                </th>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                
                </table>
            </body>
        </html>
    </xsl:template>
   
    

</xsl:stylesheet>

