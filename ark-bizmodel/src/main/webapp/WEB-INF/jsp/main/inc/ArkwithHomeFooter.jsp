<%--
  Class Name : ArkwithHomeFooter.jsp
  Description : 화면하단 Footer(include)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2016.12.21   PHS      arkwith.com homepage 생성
 
    author   : 개발팀 PHS
    since    : 2016.12.21 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
        <div class="container">
            
            <div id="footer_about" class="footer_info">
                
                <h4>about us</h4>
                <p>In him the whole building is joined together and rises to become a holy temple in the Lord. And in him you too are being built together to become a dwelling in which God lives by his Spirit.(Ephesians 2:21-22) </p>
                
            </div> <!-- END #footer_about -->
            

            
            <div id="footer_contact" class="footer_info">
                
                <h4>contact us</h4>
                <p><span class="bold_text">Arkwith Inc.</span>
                <br />
                602-6, 18, Maebongsan-ro, Mapo-gu, Seoul,
                <br />
                Republic of Korea(03911)
                <br />
                <br />
                Email: <a href="mailto:">arkwith7@gmail.com</a>
                
                <br />
                </p>
                
            </div> <!-- END #footer_about -->
            
            
            <p id="copyright">&copy; Copyright 2016 - Arkwith Inc. All rights reserved. 
            <br />
            .</p>
            
            <a href="<c:url value='/cmm/main/mainPage.do' />" id="footer_logo">Arkwith</a>
        
        </div> <!-- END .container -->
        
