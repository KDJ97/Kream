<%@page import="kr.or.ddit.kream.vo.SizeVo"%>
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
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<% 
 	String prodid = (String) request.getAttribute("prodid"); 
	
 %> 
<script>
$(function(){
	 // 상품상세페이지의 prod_id 
	 //담은 변수값 사용
		 
	$.ajax({
		url : "/Kream/SellInfo.do",
		type : 'get',
		data : {
			"prodid" : "<%=prodid%>"
			},
		success : function(res){
			str = '<h1>판매하기</h1>';
			
			$.each(res, function(i, v){
				str += '<button id="btnsize" type="button" class="btn btn-outline-dark"><br>';
				str += '<span>' + v.size_name + '</span>';
				if(v.bid_price != null){
					str += '<span id="price">' + v.bid_price + '</span>';
					
				}else{
					  str += '<span id="price">판매입찰</span>';
				}
				str += '</button>'; 

				$('.container').html(str);
			});
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		},
		dataType : 'json'
	})
	
  })
</script>





<title>Insert title here</title>
</head>
<body>

<div class="container">
</div> 
<div>
 <button class="btn btn-block btn-large btn-success" onclick="location='agree.jsp'">선불 발송</button>
</div>

</body>
</html>