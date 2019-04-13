<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
<xsl:template match="/">
    <html>
        
        <head>
            <title>Synopses</title>
            <meta name="author" content="Daniel Christensen"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                    <!--Local Stylesheet-->
                    <link rel="stylesheet" type="text/css" href="css/mystyle.css"/>
                        <!--External Stylesheets-->
                        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous"/>
                            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>
        </head>
        
        <body>
            
            <!--Navbar-->
            <div class="container">
                <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
                    <a class="navbar-brand" href="index.html">
                        <img src="images/book-of-kells-gospels.jpg" class="align-top" style="width: 30px; width: 30px;"/>
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="synopses.html">Synopses</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.html">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.html">Contact</a>
                            </li>
                        </ul>
                        <!--Search Bar
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>-->
                    </div>
                </nav>
            </div>
            
            <!--Title Banner-->
            <div class="jumbotron jumbotron-fluid text-center">
                <div class="container title-bkg">
                    <p class="title">Synopses</p>
                    <p class="subtitle d-none d-md-block">Gospel Data</p>
                </div>
            </div>
            <div class="container-fluid top-border"></div>
            
            <!--Buttons-->
            <div class="container-fluid">
                <div class="row">	
                    <div class="col">
                        <h1 style="text-align: center"><b>Instructions</b></h1>
                    </div>
                    <div class="col-md btn-block">
                        <a href="synopses-howto.html" class="btn btn-lg btn-outline-dark btn-block" type="button" target="_blank">
                            <i class="fas fa-book"></i> User Guide</a>
                    </div>  
                    <div class="col">
                        <a src="../resources/BibleWorks10-GreekMorphCodes.pdf" href="https://www.bibleworks.com/bw9help/bwh43a_Codes_BLM.htm" 
                            class="btn btn-lg btn-outline-dark btn-block" type="button" target="_blank">
                            <i class="fas fa-list-ul"></i> Parsing Chart</a>
                    </div>
                </div>
            </div>
            
            
            
            
            
            <!--Content Goes Here-->
            <!--Navigation Table-->
            <div class="container-fluid py-5">
                <div class="row">
                    <div class="col">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" class="d-none d-md-block">#</th>
                                    <th scope="col">Title</th>
                                    <th scope="col">Matthew</th>
                                    <th scope="col">Mark</th>
                                    <th scope="col">Luke</th>
                                    <th scope="col">John</th>
                                </tr>
                            </thead>
                            <tbody>
<xsl:apply-templates select="table/rows">
    
</xsl:apply-templates>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
            <!-- Footer -->
            <footer class="page-footer sticky-bottom font-small teal py-2 bg-dark text-white">
                <div class="container-fluid text-center text-md-left d-none d-md-block">
                    <div class="row">
                        <div class="col-md-2.5 pl-5">
                            <a href="https://goo.gl/images/BkMKMf" target="_blank">
                                <img src="images/book-of-kells-gospels.jpg" style="width: 100px; width: 100px;"/>
                            </a>
                        </div>
                        <div class="col-md">
                            <p>Gospel Data</p>
                            <p>Copyright 2019</p>
                            <p><a class="anchor" href="mailto:dkchristensen@uchicago.edu">Daniel K. Christensen</a></p>
                        </div>
                        <div class="col-md">
                            <p><a class="anchor" href="index.html">Home</a></p>
                            <p><a class="anchor" href="synopses.html">Synopses</a></p>
                            
                            <p><a class="anchor" href="about.html">About</a></p>
                            <p><a class="anchor" href="contact.html">Contact</a></p>
                        </div>
                    </div>
                </div>
            </footer>
            
            <!--External Scripts-->
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
            <!--Local Scripts
<script src="scripts/jquery.min.js"></script>
<script src="scripts/popper.min.js"></script>
<script src="scripts/bootstrap.min.js"></script>-->
            <script src="scripts/openPericope.js"></script>
            
        </body>
        
    </html>
    
    
    
</xsl:template>
    
    <xsl:template match="table/rows">
        <xsl:for-each select="row">
            <tr>
                <th scope="row" class="d-none d-md-block">
                    <xsl:value-of select="value[1]"/>
                </th>
                <td><a href="synopses/{value[1]}.html" target="_blank" class="btn btn-outline-dark" type="button"><xsl:value-of select="value[9]"/></a></td>
                <td><xsl:value-of select="value[2]"/></td>
                <td><xsl:value-of select="value[3]"/></td>
                <td><xsl:value-of select="value[4]"/></td>
                <td><xsl:value-of select="value[5]"/></td>
            </tr>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>