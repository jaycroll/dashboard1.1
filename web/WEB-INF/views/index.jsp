<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/style.css' />"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/font.css' />"/>

<script type="text/javascript" src="<c:url value='/resources/js/jquery-1.6.4.min.js' />"></script>
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
<div id="header"><img src="<c:url value='/resources/images/ppe-blk.png' />" width="400" height="42" /></div>
<div id="title" class="lucida_12_lead"> DashBoard</div>
<div id="icons" style="margin:80px auto;">

    <img src="<c:url value='/resources/images/icon1.png' />" border="0" style="float:left; margin:0 10px;" />
    <img src="<c:url value='/resources/images/icon2.png' />" border="0" style="float:left; margin:0 10px;" />
    <img src="<c:url value='/resources/images/icon3.png' />" border="0" style="float:left; margin:0 30px;" />
    <img src="<c:url value='/resources/images/access.png' />" width="90" height="110" border="0"  style="float:left; margin:0 10px;" /></div>
<div id="title"><a href="#login-box" class="login-window" style="color:#62bbf5; font-family: 'Lucida Grande', Tahoma, Verdana, Arial, sans-serif; font-size:12px; font-weight:bold; text-decoration:none;">Login</a></div>

<div id="login-box" class="login-popup">
        <a href="#" class="close"><img src="<c:url value='/resources/images/close_pop.png' />" class="btn_close" title="Close Window" alt="Close" /></a>
        <fieldset class="textbox">
        <form:form method="POST" action="login" class="signin">
            
            <label class="username">
                <form:label path="username" class="username">  <span>Username or email</span></form:label>
                <form:input path="username" autocomplete="on" id="username"/>
            </label>

            <label class="password">
                <form:label path="password"><span class="password">Password</span></form:label>
                <form:input path="password"  id="password" type="password"/>
            </label>
            <input type="submit" value="Sign In"  class="submit button"/>
        </form:form>
        </fieldset>     

</div>
<span>${error}</span>

</div><!---------wrapper------------->
</div><!---------page------------->



</body>
</html>



