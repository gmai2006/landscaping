<!--page_container-->
    <div class="page_container">
    	<div class="wrap">
        	<div class="breadcrumb">
				<div>
					<a href="index.html">Home</a><span>/</span>Portfolio
				</div>
			</div>
			<div class="container">
			
                <div id="options">                                           
                    <ul id="filters" class="option-set" data-option-key="filter">
                        <li><a href="#filter" data-option-value="*" class="selected">All</a></li>
                        $portfolios : { p |
                        <li><a href="#filter" data-option-value=".$p.name$">$p.title$</a></li> 
                        }$                                           
                    </ul>                                           
                    <div class="clear"></div>
                </div>
                
                <div class="row">
                    <!-- portfolio_block -->
                    <div class="projects">
                    $portfolios : { p |
                        $p.images : { img |                              
                        <div class="span6 element $p.name$ height_2column" data-category="$p.name$">
                            <div class="hover_img">
                                <img src="images/portfolio/$p.name$/$img$" alt="$img$" />
                                <span class="portfolio_zoom"><a href="images/portfolio/$p.name$/$img$" rel="prettyPhoto[portfolio1]"></a></span>
                                <span class="portfolio_link"><a href="single_portfolio.html">View item</a></span>
                            </div> 
                            <!--
                            <div class="item_description">
                                <h6><a href="single_portfolio.html">Lorem ipsum dolor</a></h6>
                                <div class="descr">Et dicta essent vis, sed vitae dictas vulputate ea, ex zril quaeque mentitum quo.</div>
                            </div>
                            -->                                    
                        </div>
                        }$
                       }$ 
                        <div class="clear"></div>
                    </div>   
                    <!-- //portfolio_block -->   
                </div>
                
            </div>
        </div>
    <!--//MAIN CONTENT AREA-->
    	
    </div>
    <!--//page_container-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/superfish.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/sorting.js"></script>
    <script type="text/javascript" src="js/jquery.preloader.js"></script>
    <script type="text/javascript" src="js/jquery.tweet.js"></script>
    <script type="text/javascript" src="js/myscript.js"></script>
    
    <script type="text/javascript">
		\$(document).ready(function(){
			// Preloader
			\$(".projects .element").preloader();
			
			//Image hover
			\$(".hover_img").live('mouseover',function(){
					var info=\$(this).find("img");
					info.stop().animate({opacity:0.5},400);
					\$(".preloader").css({'background':'none'});
				}
			);
			\$(".hover_img").live('mouseout',function(){
					var info=\$(this).find("img");
					info.stop().animate({opacity:1},400);
					\$(".preloader").css({'background':'none'});
				}
			);
		});
	</script>
    
