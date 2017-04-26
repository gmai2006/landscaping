<!--page_container-->
    <div class="page_container">
    	<div class="wrap">
        	<div class="breadcrumb">
				<div>
					<a href="index.html">Home</a><span>/</span>Single portfolio
				</div>
			</div>
			<div class="container">
                <div class="row pad25">
                	<div class="span8">
                    	<div id="portfolio_carousel" class="carousel slide">
							<div class="carousel-inner">
								<div class="item active">
									<img src="images/portfolio/$first(portfolios).name$/$first(first(portfolios).images)$" alt="" />
								</div>
								$portfolios : { p |
	                        		$p.images : { img | 
									<div class="item">
										<img src="images/portfolio/$p.name$/$img$" alt="" />
									</div>
									}$
								}$
							</div>
							<a class="left carousel-control" href="#portfolio_carousel" data-slide="prev"></a>
							<a class="right carousel-control" href="#portfolio_carousel" data-slide="next"></a>
						</div>
						<p>These are few of our recent landscaping works</p>
						
                    </div>
                    
                </div>
                <a class="contact_btn marg20" href="javascript:history.back()">Back to Portfolio</a>
            </div>
        </div>
    <!--//MAIN CONTENT AREA-->
    	
    </div>
    <!--//page_container-->

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/superfish.js"></script>
    <script type="text/javascript" src="js/jquery.tweet.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/myscript.js"></script>
	<script type="text/javascript">
		\$(document).ready(function(){	
			//Slider
			\$('#portfolio_carousel').carousel({
				pause: 'hover'
			});				
		});
	</script>
