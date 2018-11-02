<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--Style sheets-->
<link href="style/styles.css" type="text/css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home</title>
</head>
<body id="main-body">
        <div class="header">
	    <img src="style/Medicare.png" width="92"/>
	    <img src="style/nur.jpg" width="93"/>

            <h3><b>MediCare health prediction</b></h3>
	    
        </div>
        <div class="menu">
			<img src="style/tt.jpg">
        </div>
        <div class="content">
            <div class="module-title">
            
            
					
            </div>
            <div class="menuWrapper" id="ww">
			<strong>Add Diseases</strong>
           <hr/>
           <jsp:include page="addDisease.jsp"/>

            </div>
            
        </div>
</body>
</html>