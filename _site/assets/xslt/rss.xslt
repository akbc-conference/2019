<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" encoding="utf-8" />
<xsl:template match="/rss">
	<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html &gt;</xsl:text>
	<html>
	<head>
		<xsl:text disable-output-escaping="yes"><![CDATA[
		<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>RSS Feed (Styled)</title>

    <link rel="stylesheet" type="text/css" href="http://localhost:4000/2019/assets/css/styles_feeling_responsive.css">

  

	<script src="http://localhost:4000/2019/assets/js/modernizr.min.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js"></script>
	<script>
		WebFont.load({
			google: {
				families: [ 'Lato:400,700,400italic:latin', 'Volkhov::latin' ]
			}
		});
	</script>

	<noscript>
		<link href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic%7CVolkhov' rel='stylesheet' type='text/css'>
	</noscript>

  <link rel="icon" href="http://localhost:4000//2019/favicon.ico">

	

		]]></xsl:text>
	</head>
	<body id="top-of-page">
		<xsl:text disable-output-escaping="yes"><![CDATA[
		<div id="navigation" class="sticky">
  <nav class="top-bar" role="navigation" data-topbar>
    <ul class="title-area">
      <li class="name">
      <h1 class="show-for-small-only"><a href="http://localhost:4000/2019">  <img src="/2019/assets/img/logo_notext.png" style="width:30px"/> AKBC 2019</a></h1>
    </li>
       <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
      <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
    </ul>
    <section class="top-bar-section">
      
      <ul class="left">
        

              

          
          

            
            
              <li><a  href="http://localhost:4000/2019/">Home</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a  href="http://localhost:4000/2019/speakers/">Program</a>

                  <ul class="dropdown">
                    

                      

                      <li><a  href="http://localhost:4000/2019/speakers/">Speakers</a></li>
                    

                      

                      <li><a  href="http://localhost:4000/2019/workshops/">Workshops</a></li>
                    

                      

                      <li><a  href="http://localhost:4000/2019/schedule/">Schedule</a></li>
                    

                      

                      <li><a  href="https://openreview.net/group?id=AKBC.ws/2019/Conference" target="_blank">Accepted papers</a></li>
                    

                      

                      <li><a  href="http://localhost:4000/2019/cfp/">Call for papers</a></li>
                    
                  </ul>

              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a  href="http://localhost:4000/2019/venue/">Information for participants</a>

                  <ul class="dropdown">
                    

                      

                      <li><a  href="http://localhost:4000/2019/venue/">Venue</a></li>
                    

                      

                      <li><a  href="http://localhost:4000/2019/registration/#visa">Visa information</a></li>
                    

                      

                      <li><a  href="http://localhost:4000/2019/travel/">Travel</a></li>
                    
                  </ul>

              </li>
              <li class="divider"></li>
            
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        
        
      </ul>

      <ul class="right">
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a  href="http://localhost:4000/2019/sponsors/">Sponsors</a></li>

            
            
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a  href="http://localhost:4000/2019/#dates">Dates</a></li>

            
            
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a  href="http://localhost:4000/2019/registration/">Registration</a></li>

            
            
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a  href="http://localhost:4000/2019/organization/">Organization</a></li>

            
            
          
        
        
      </ul>


    </section>
  </nav>
</div><!-- /#navigation -->

		

<div id="masthead-no-image-header">
	<div class="row">
		<div class="small-12 columns">
			<a id="logo" href="http://localhost:4000/2019/" title="AKBC 2019 – ">
				<img src="http://localhost:4000/2019/assets/img/logo.png" alt="AKBC 2019 – " width="25%">
			</a>
		</div><!-- /.small-12.columns -->
	</div><!-- /.row -->
</div><!-- /#masthead -->









		


<div class="alert-box warning text-center"><p>This <a href="https://en.wikipedia.org/wiki/RSS" target="_blank">RSS feed</a> is meant to be used by <a href="https://en.wikipedia.org/wiki/Template:Aggregators" target="_blank">RSS reader applications and websites</a>.</p>
</div>



		]]></xsl:text>
		<header class="t30 row">
	<p class="subheadline"><xsl:value-of select="channel/description" disable-output-escaping="yes" /></p>
	<h1>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="channel/link" />
			</xsl:attribute>
			<xsl:value-of select="channel/title" disable-output-escaping="yes" />
		</xsl:element>
	</h1>
</header>
<ul class="accordion row" data-accordion="">
	<xsl:for-each select="channel/item">
		<li class="accordion-navigation">
			<xsl:variable name="slug-id">
				<xsl:call-template name="slugify">
					<xsl:with-param name="text" select="guid" />
				</xsl:call-template>
			</xsl:variable>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="concat('#', $slug-id)"/></xsl:attribute>
				<xsl:value-of select="title"/>
				<br/>
				<small><xsl:value-of select="pubDate"/></small>
			</xsl:element>
			<xsl:element name="div">
				<xsl:attribute name="id"><xsl:value-of select="$slug-id"/></xsl:attribute>
				<xsl:attribute name="class">content</xsl:attribute>
				<h1>
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
						<xsl:value-of select="title"/>
					</xsl:element>
				</h1>
				<xsl:value-of select="description" disable-output-escaping="yes" />
			</xsl:element>
		</li>
	</xsl:for-each>
</ul>

		<xsl:text disable-output-escaping="yes"><![CDATA[
		    <div id="up-to-top" class="row">
      <div class="small-12 columns" style="text-align: right;">
        <a class="iconfont" href="#top-of-page">&#xf108;</a>
      </div><!-- /.small-12.columns -->
    </div><!-- /.row -->


    <footer id="footer-content" class="bg-grau">


    <div id="footer">

	<img style="display:inline" src="/2019/images/sponsors/cz-foundation/PNG/cz-cropped.png" alt="Chan Zuckerberg Initiative" width="10%">
	<img style="display:inline" src="/2019/images/sponsors/facebook-cropped.png" alt="Facebook" width="10%"> &nbsp;
	<img style="display:inline" src="/2019/images/sponsors/google2.0.0.jpg" alt="Google"  width="10%"> &nbsp;
	<img style="display:inline" src="/2019/images/sponsors/oracle-cropped.png" alt="Oracle Corporation" width="10%"> &nbsp;
	<img style="display:inline" src="/2019/images/sponsors/diffbot-vertical-light-background@2x.png" alt="Diffbot" width="10%"> &nbsp;
	<img style="display:inline" src="/2019/images/sponsors/elsevier.jpeg" alt="Elsevier"  width="10%"> &nbsp;

      </div><!-- /#footer -->


      <div id="subfooter">
        <nav class="row">
          <section id="subfooter-left" class="small-12 medium-6 columns credits">
            <p>Created with &hearts; by <a href="http://phlow.de/">Phlow</a> with <a href="http://jekyllrb.com/" target="_blank">Jekyll</a> based on <a href="http://phlow.github.io/feeling-responsive/">Feeling Responsive</a>.</p>
          </section>

          <section id="subfooter-right" class="small-12 medium-6 columns">
            <ul class="inline-list social-icons">
            
              <li><a href="http://github.com/phlow" target="_blank" class="icon-github" title="Code und mehr..."></a></li>
            
              <li><a href="http://www.youtube.com/PhlowMedia" target="_blank" class="icon-youtube" title="Videos, Video-Anleitungen und Filme von Phlow auf YouTube"></a></li>
            
              <li><a href="http://twitter.com/phlow" target="_blank" class="icon-twitter" title="Immer das Neuste von Phlow gibt es auf Twitter"></a></li>
            
              <li><a href="http://www.mixcloud.com/phlow/" target="_blank" class="icon-cloud" title="Mixe, was sonst?"></a></li>
            
              <li><a href="https://plus.google.com/u/0/+Phlow" target="_blank" class="icon-googleplus" title="YouTube Google+"></a></li>
            
            </ul>
          </section>
        </nav>
      </div><!-- /#subfooter -->
    </footer>

		


<script src="http://localhost:4000/2019/assets/js/javascript.min.js"></script>














		]]></xsl:text>
	</body>
	</html>
</xsl:template>
<xsl:template name="slugify">
	<xsl:param name="text" select="''" />
	<xsl:variable name="dodgyChars" select="' ,.#_-!?*:;=+|&amp;/\\'" />
	<xsl:variable name="replacementChar" select="'-----------------'" />
	<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
	<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
	<xsl:variable name="lowercased"><xsl:value-of select="translate( $text, $uppercase, $lowercase )" /></xsl:variable>
	<xsl:variable name="escaped"><xsl:value-of select="translate( $lowercased, $dodgyChars, $replacementChar )" /></xsl:variable>
	<xsl:value-of select="$escaped" />
</xsl:template>
</xsl:stylesheet>