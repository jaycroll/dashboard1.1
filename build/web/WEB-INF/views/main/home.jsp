<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/font.css">

<script type="text/javascript" src="js/jquery-1.6.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('a.login-window').click(function() {
		
                //Getting the variable's value from a link 
		var loginBox = $(this).attr('href');

		//Fade in the Popup
		$(loginBox).fadeIn(300);
		
		//Set the center alignment padding + border see css style
		var popMargTop = ($(loginBox).height() + 24) / 2; 
		var popMargLeft = ($(loginBox).width() + 24) / 2; 
		
		$(loginBox).css({ 
			'margin-top' : -popMargTop,
			'margin-left' : -popMargLeft
		});
		
		// Add the mask to body
		$('body').append('<div id="mask"></div>');
		$('#mask').fadeIn(300);
		
		return false;
	});
	
	// When clicking on the button close or the mask layer the popup closed
	$('a.close, #mask').live('click', function() { 
	  $('#mask , .login-popup').fadeOut(300 , function() {
		$('#mask').remove();  
	}); 
	return false;
	});
});
</script>
<title>Dashboard</title>
</head>

<body>
<div id="page">
<div id="wrapper">
<div id="header"><img src="images/ppe-blk.png" width="400" height="42" /></div>
<div id="title" class="lucida_12_lead"> DashBoard</div>
<div id="menu"><div id="menu-right" class="lucida_12_lead"><span class="lucida_12_tungsten_b">Hello, Tom.</span> <span class="lucida_12_red"><span class="lucida_12_red_b">Logout</span></span></div>
 </div>
<div id="icons" style="margin:0px auto;">
    <a href="company.html"><img src="images/icon1.png" border="0" style="float:left; margin:0 10px;" /></a>
    <a href="velocity.html"><img src="images/icon2.png" border="0" style="float:left; margin:0 10px;" /></a>
    <a href="domestic.html"><img src="images/icon3.png" border="0" style="float:left; margin:0 30px;" /></a>
    <a href="role.html"><img src="images/access.png" width="90" height="110" border="0"  style="float:left; margin:0 10px;" /></a>
</div>



</div><!---------wrapper------------->
</div><!---------page------------->



</body>
</html>
