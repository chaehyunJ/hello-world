<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        body {
        	background-color: #f3f3f3;
        }
        .totalup {
            width: 1400px;
            margin: auto;
        }
        .totalmenu {
        	margin-left: 100px;
            width: 1000px;
            display: flex;
            justify-content: space-between;
        }
        .info {
            display: flex;
            justify-content: center;
            justify-content: space-between;
        }
        .languages {
            width: 300px;
            box-sizing: border-box;
            display: flex;
        }
        .koeng {
            color: #333;
            font-size: 13px;
        }
        .kogap {
            margin-right: 10px;
        }
        .login  {
            display: flex;
            width: 600px;
        }
        .menu {
            box-sizing: border-box;
            display: flex;
            align-items: center;
            width:950px;
            border-radius: 10px;
            box-shadow: 5px 5px #777;
            background-color: #333;
        }
        .menuselect {
            margin-top: 20px;
            width: 200px;
            height: 300px;
            background-color: #ffc423;
            border: 0;
            border-radius: 5px;
            position: sticky;
            top: 10px;
            margin-left: 40px;
        }
        .menuselect > * {
        	border-bottom: 1px solid #efaf00;
        	color: #a25716;
        }
        .menuinfo {
        	margin-left: 20px; 
        	width: 600px;
        	display: flex;
        	flex-flow: wrap;
        	margin-top: 20px;
        }
        .whiteback {
        	background-color: white;
        }
        .menuinfo > div {
        	background-color: #fff;
        	border-radius: 2px;
        	border: 1px solid black;
        	margin-bottom: 20px;
        	border-color: #ddd;
        	padding-left: 5px;
        	padding-right: 5px;
        }
        .menuinfo > div:nth-child(even) {
        	margin-left: 10px;
        }
        
</style>
</head>
<body>
<script src="${cpath }/resources/js/ex01.js"></script>
	<div class="totalup">
        <div class="info">
            <div class="languages">
                <div class="koeng kogap">한국어 |  </div>
                <div class="koeng">Engilsh</div>
            </div>
            <div class="login">
                <div class="kogap"><img src="https://www.mcdelivery.co.kr/kr//static/1639621479089/assets/00/img/icon_profile_gray.png" width="20px; height=20px;"></div>
                <div class="kogap koeng"> | 로그인 |</div>
                <div class="kogap koeng">주문조회</div>
            </div>
        </div>
        <div class="menu">
            <div class="whiteback" style="margin-right: 10px;"><img src="https://www.mcdelivery.co.kr/kr//static/1639621479089/assets/82/img/mcdelivery_logo_ko.jpg" width="146px;"></div>
            <div class="kogap" style="color: #ffc423;">메뉴</div>
            <div class="kogap" style="color: #fff;">마이페이지</div>
            <div class="kogap" style="color: #fff;">기타정보</div>
        </div>
    </div>
    <div class="totalmenu">
        <fieldset class="menuselect">
            <p><div style="border: none;">일반메뉴</div></p>
            <p><label><input type="radio" name="menufilter">추천메뉴</label></p>
            <p><label><input type="radio" name="menufilter">맥모닝 & 세트</label></p>
            <p><label><input type="radio" name="menufilter">스낵 & 사이드</label></p>
            <p><label><input type="radio" name="menufilter">음료</label></p>
            <p><label><input type="radio" name="menufilter">디저트</label></p>
            <p><label><input type="radio" name="menufilter">해피밀</label></p>
        </fieldset>
        <div class="menuinfo"></div>
    </div>
    <script>
   		const cpath = '${cpath}'
    	const menuinfo = document.querySelector('.menuinfo')
    	window.onload = dataHandler
    </script>
</body>
</html>