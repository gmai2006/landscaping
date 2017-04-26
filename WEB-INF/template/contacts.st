<!--page_container-->
    <div class="page_container">
    	<div class="wrap">
        	<div class="breadcrumb">
				<div>
					<a href="index.html">Home</a><span>/</span>Contact
				</div>
			</div>
			<div class="container">
                <section>
                	<div class="row">
                    	<div class="span4">
                        	<h2 class="title"><span>Contact Info</span></h2>
                            <div id="map"><iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d21425.607027971782!2d-122.27114314981814!3d47.8357016439605!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s44th+lynnwood+park+wa+98037!5e0!3m2!1sen!2sus!4v1421166782604" width="600" height="450" frameborder="0" style="border:0"></iframe></div>
                            <p>44th Ave<br/>Lynnwood, WA 98037</p>
                            <p>Phone: 1-425 772 9499 / 425 770 7021<br/>Email: <a href="mailto:toidoan@frontier.net">toidoan@frontier.net</a><br/>Web: <a href="http://doanlandscaping.com">http://doanlandscaping.com</a></p>                           
                        </div>
                    	<div class="span8">
                        	<h2 class="title"><span>Get In Touch</span></h2>
                            <div class="contact_form">  
                            	<div id="note"></div>
                                <div id="fields">
                                    <form id="ajax-contact-form" action="">
                                        <input class="span7" type="text" name="name" value="" placeholder="Name (required)" />
                                        <input class="span7" type="text" name="email" value="" placeholder="Email (required)" />
                                        <input class="span7" type="text" name="subject" value="" placeholder="Subject" />
                                        <textarea name="message" id="message" class="span8" placeholder="Message"></textarea>
                                        <div class="clear"></div>
                                        <input type="reset" class="contact_btn" value="Clear form" />
                                        <input type="submit" class="contact_btn" value="Submit" />
                                        <div class="clear"></div>
                                    </form>
                                </div>
                            </div>
                        </div>                	
                	</div>
                </section>
            </div>
        </div>
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
			\$("#ajax-contact-form").submit(function() {
				var str = \$(this).serialize();		
				\$.ajax({
					type: "POST",
					url: "contact_form/contact_process.php",
					data: str,
					success: function(msg) {
						// Message Sent - Show the 'Thank You' message and hide the form
						if(msg == 'OK') {
							result = '<div class="notification_ok">Your message has been sent. Thank you!</div>';
							\$("#fields").hide();
						} else {
							result = msg;
						}
						\$('#note').html(result);
					}
				});
				return false;
			});															
		});		
	</script>
    
