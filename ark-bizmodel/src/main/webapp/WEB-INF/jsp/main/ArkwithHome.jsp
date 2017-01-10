<%--
  Class Name : ArkwithHome.jsp 
  Description : 메인화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2016.12.21   PHS      arkwith.com homepage 생성
 
    author   : 개발팀 PHS
    since    : 2016.12.21 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!--  
<DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
-->
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Arkwith - Home</title>
	<link href="<c:url value='/'/>css/reset.css" rel="stylesheet" type="text/css" >
	<link href="<c:url value='/'/>css/main.css" rel="stylesheet" type="text/css" >   
</head>
<body>
	<!-- header 시작 -->
	<header>
        <div id="header"><c:import url="/EgovPageLink.do?link=main/inc/ArkwithHomeHeader" /></div> <!-- END #header -->
    </header>
	<!-- //header 끝 -->
	
	<!-- slogan 시작 -->
	<section id="slogan">
    <div id="slideshow_area">
	    <div class="container">
	            
	            <div id="slideshow_container">
	                <ul  id="slideshow_container_contents">
	                    <li><img src="<c:url value='/images/index/slogan_image.jpg' />" alt="slogan1" /></li>
	                </ul>
	                <div id="slideshow_pagination">
	                    
	                    <ul>
	                        <li><a href="#"></a></li>
	                        <li><a href="#"></a></li>
	                        <li><a href="#" class="current"></a></li>
	                        <li><a href="#"></a></li>
	                        <li><a href="#"></a></li>
	                    </ul>
	                    
	                </div> <!-- END #slideshow_pagination -->
	            
	            </div> <!-- END #slideshow_container -->
	            
	    </div> <!-- END .container -->
    </div> <!-- END #slideshow_area -->
    </section>
	<!-- slogan 끝 -->

	<!-- home contents 시작 -->
	<section id="vision_services">
    <div id="mid_content">
        <div class="container">
		<section id="vision">
	        <div id="vision_stmt">
	            <p>We will be a provider for enterprise application software based on business model 
	            and cloud service using semantic web and machine learning technology.</p>
	        </div> <!-- END #vision -->
		</section>
		<section id="services">
            <div class="mid_content_info mid_content_space">
		                    
                <h2 id="business">Business Model</h2>
                <p>A business model is an "abstract representation of an organization, be it conceptual, 
                textual, and/or graphical, of all core interrelated architectural, co-operational, 
                and financial arrangements designed and developed by an organization presently 
                and in the future,</p>
                <a href="#"><img src="<c:url value='/images/index/arrow_right.png' />" alt="arrow right" />Read More</a>
		                    
            </div>
		                
            <div class="mid_content_info mid_content_space">
		
                <h2 id="semantic">Semantic Web</h2>
                <p>The Semantic Web is an extension of the Web through standards by the World Wide Web Consortium (W3C).
                 The standards promote common data formats and exchange protocols on the Web, 
                 most fundamentally the Resource Description Framework (RDF). </p>
                <a href="#"><img src="<c:url value='/images/index/arrow_right.png' />" alt="arrow right" />Read More</a>
		                    
            </div>
		                
            <div class="mid_content_info">
		                    
                <h2 id="machine">Machine Learning</h2>
                <p>Machine learning is the subfield of computer science that "gives computers the ability to learn 
                without being explicitly programmed" (Arthur Samuel, 1959). Evolved from the study of pattern 
                recognition and computational learning theory in artificial intelligence,</p>
                <a href="#"><img src="<c:url value='/images/index/arrow_right.png' />" alt="arrow right" />Read More</a>
		                    
            </div>
		                          
		</section>
        </div> <!-- END .container -->
    </div> <!-- END #mid_content -->
	</section>
	<!-- home contents 끝 -->
	
	<!-- footer 시작  -->
	<footer>
	<div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/ArkwithHomeFooter" /></div>
	</footer>
	<!-- //footer 끝  -->
</body>
</html>