<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.kream.vo.PhotoVo"%>
<%@page import="kr.or.ddit.kream.vo.BidVo"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">



</script>

<title>Insert title here</title>
</head>
<body>

 <%
    //sellPrice 서블릿에서 받아온 가격 정보
   List<BidVo> list = (List<BidVo>) request.getAttribute("price");
 
 	//상품 상세페이지에서 받아올 prod_id(임시방법)
 	String prod_id = (String) request.getAttribute("prod_id");
%> 


   
<%  // 상품 상세 페이지에서 받아올 사진 photovo
PhotoVo photoVo = (PhotoVo)request.getAttribute("photovo"); 
%>

<div>

<div class="container">
  <h1>판매하기</h1>
  
   
<div><img src="<%=request.getContextPath() %>/img/imageSrcView.do?memID=<%=memVo.getMem_id() %>" width="50" height="50"></div>
  
  <hr>
  <form>
  
  <%
  	for(BidVo vo : list){
  %>
  	<div class = "bid_info">
  		<%= vo.getSize_name() %><br>
  		<%= vo.getBid_price() %>
  	</div>
  <%
  	}
  %>
  
   </form>
   
 <button class="btn btn-block btn-large btn-success" onclick="location='agree.jsp'">선불 발송</button>
  

</div>
</div>

</body>
</html>