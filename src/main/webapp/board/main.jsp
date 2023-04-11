<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>main.jsp</title>
<%-- 5~14 line 해당 이미지를 클릭하면 각각의 페이지로 이동 --%>
<a href="main.jsp">
<img src="/pt1/board/image/main_image.png" width="80" height="30"/></a>
<a href="shop.jsp">
<img src="/pt1/board/image/shop_image.png" width="80" height="30"/></a>
<a href="item.jsp">
<img src="/pt1/board/image/item_image.png" width="80" height="30"/></a>
<a href="sale.jsp">
<img src="/pt1/board/image/sale_image.png" width="80" height="30"/></a>
<a href="more.jsp">
<img src="/pt1/board/image/more_image.png" width="80" height="30"/></a>
<%-- 로그인 페이지로 이동 (수정) --%>
 <table>
 	<form name="login" method="post" action="login.jsp">
 		<input type="submit" name="Submit" value="로그인">
 	</form>
</table>


<%
	//Type 파라미터를 받을 변수 Type
	String Type = request.getParameter("Type");
%>

<%-- 검색 기능 추가 (수정) --%>
<input type="text" value="search" name="search1" size="10" maxlength="12">
<input type="button" value="검색" name="search2"
	onclick="location='/pt1/board/search.jsp'" />
 

<%-- 페이지 이동 --%>
<input type="button" value="베스트상품 페이지로 이동" 
		onclick="location='/pt1/board/search.jsp'" /><br />

<%-- goods_image.png 사진 클릭하면 Type=S 파라미터 추가 --%>
<a href="main.jsp?Type=S">
<img src="/pt1/board/image/goods_image.png" width="80" height="30"/></a>

<%-- brand_image.png 사진 클릭하면 Type=B 파라미터 추가 --%>
<a href="main.jsp?Type=B">
<img src="/pt1/board/image/brand_image.png" width="80" height="30"/></a>


<%
	//Type 파라미터가 null인 경우 즉 처음 페이지를 들어갔을 경우 또는 
	//Type 파라미터가 S인 경우	  즉 goods_image.png를 클릭했을 경우 
	if(Type==null || Type.equals("S")){
	//상품 목록 보여줌
%>
<h1>상품 이미지</h1>
<h1>상품 이미지</h1>
<h1>상품 이미지</h1>
<%
	//Type 파라미터가 B인 경우		즉 brand_image.png를 클릭했을 경우 
	} else if(Type.equals("B")){
	//브랜드 목록 보여줌
%>
<h1>브랜드 이미지</h1>
<h1>브랜드 이미지</h1>
<h1>브랜드 이미지</h1>
<%}
%>

<%-- 수정필요 일단 넣어둠 --%>
<input type="button" value="카테고리" 
		onclick="location='/pt1/board/search.jsp'" />


<%-- 공지사항 페이지로 이동 --%>
<input type="button" value="공지사항" 
		onclick="location='/pt1/board/search.jsp'" />
		



		
