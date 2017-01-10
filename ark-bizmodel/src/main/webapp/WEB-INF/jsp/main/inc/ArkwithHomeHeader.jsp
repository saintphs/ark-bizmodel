<%--
  Class Name : ArkwithHomeHeader.jsp
  Description : 화면상단 Header(include)
  Modification Information
 
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2016.12.21   PHS      arkwith.com homepage header 생성
 
    author   : 개발팀 PHS
    since    : 2016.12.21 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.util.Date"%>
<%@ page import ="egovframework.com.cmm.LoginVO" %>

<script type="text/javascript">
    function fn_main_headPageMove(menuNo, url){
	    document.selectOne.menuNo.value=menuNo;
	    document.selectOne.link.value=url;
	    document.selectOne.action = "<c:url value='/EgovPageLink.do'/>";
	    //alert(document.selectOne.action);
	    document.selectOne.submit();
    }
    function fn_main_headPageAction(menuNo, url){
        document.selectOne.menuNo.value=menuNo;
        document.selectOne.link.value="";
        document.selectOne.action = "<c:url value='/' />"+url;
        document.selectOne.method = "post";
        //alert(document.selectOne.action);
        document.selectOne.submit();
    }
</script>

<!-- new modify -->
<!-- topmenu start -->
<form name="selectOne" action="#LINK">
<input name="menuNo" type="hidden" />
<input name="link" type="hidden" />
</form>
	<!-- get current date info -->
	<%
		Calendar cal=Calendar.getInstance();
		Date now=new Date();
	%>
	<%
		LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO"); 
	%>


        <div class="container">
        <div class="top_menu">
			<nav>
				<ul id="top_nav">
                <!-- 로그린 시작 -->
                <%
       			if(loginVO == null){ 
    			%>
        			<li><a href="<c:url value='/uat/uia/egovLoginUsr.do'/>">Sign in</a></li>
    			<% }else { %>
    				<c:set var="loginName" value="<%= loginVO.getName()%>"/>
        			<li><p>&nbsp;<c:out value="${loginName}"/> &nbsp;</p></li>
        			<li><a href="<c:url value='/uat/uia/actionLogout.do'/>">Sign out</a></li>
			    <% } %>    
				</ul>
			</nav>
			<span class="date"><%=now%></span>
        </div>

        <h1><a href="<c:url value='/cmm/main/mainPage.do' />"  id="logo">Arkwith</a></h1>

        <!-- 상단 메뉴 시작 -->
        <div id="main_menu">
			<nav>
            <ul>
                <!-- 혼 시작 -->
                <li class="first_list"><a href="#LINK" class="main_menu_first" onclick="javascript:fn_main_headPageMove('11','main/sample_menu/EgovAboutSite')">home</a></li>
                <!-- 혼 동료 -->
                <!-- 소개 시작 -->
                <li class="first_list"><a href="#LINK" class="main_menu_first" onclick="javascript:fn_main_headPageMove('21','main/arkwith_menu/Knowledge')">Knowledge</a></li>
                <!-- 소개 종료 -->
                <!-- 서비스 시작 -->
                <li class="first_list with_dropdown">
                    <a href="#LINK"  class="main_menu_first"  onclick="javascript:fn_main_headPageMove('31','main/sample_menu/EgovAboutSite')">Services</a>
                    <ul>
                        <li class="second_list second_list_border"><a href="#" class="main_menu_second">Business Model Management</a></li>
                        <li class="second_list second_list_border"><a href="#" class="main_menu_second">Business Process Management</a></li>
                        <li class="second_list"><a href="#" class="main_menu_second">Application Software Management</a></li>
                    </ul>
                </li>
                <!-- 서비스 종료 -->
                <!-- 고객지원 시작 -->
                <li class="first_list"><a href="contact.html" class="main_menu_first">Support</a></li>
                <!-- 고객지원 종료 -->
                <!-- 사이트관리 시작 -->
    			<%
       				if(loginVO != null){ 
    			%>
    			<li class="first_list with_dropdown">
    				<a href="#LINK"   class="main_menu_first" onclick="javascript:fn_main_headPageAction('51','cop/smt/sim/EgovIndvdlSchdulManageMonthList.do')" >사이트관리(관리자)</a>
                    <ul>
                        <li class="second_list second_list_border"><a href="#" class="main_menu_second">web design</a></li>
                        <li class="second_list second_list_border"><a href="#" class="main_menu_second">wordpress design</a></li>
                        <li class="second_list second_list_border"><a href="#" class="main_menu_second">mobile app development</a></li>
                        <li class="second_list second_list_border"><a href="#" class="main_menu_second">internet marketing</a></li>
                        <li class="second_list"><a href="#" class="main_menu_second">social media management</a></li>
                    </ul>
                </li>
    			<%
       				}
    			%>
                <!-- 사이트관리 종료 -->
                
                
            </ul>
        	</nav>
        </div> <!-- END #main_menu -->
    
        </div> <!-- END .container -->

    
