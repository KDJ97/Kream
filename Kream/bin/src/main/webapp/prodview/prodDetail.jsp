<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "/Kream/css/prodDetail.css">
<title>Insert title here</title>
<script src = "<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
<%
	String prodid = (String) request.getAttribute("prodid");
%>
<script type="text/javascript">

$(function(){
	str = "";//이미지 출력
	code = "";//정보 출력
	
	
	$.ajax({
		url : '/Kream/prodDetail.do',
		type : 'get',
		data : {
			"prodid" : "<%=prodid%>"
		},
		success : function(res){
			//res.키값
			//이미지 출력
			str += '<img id = "shoeimg" src = "' + res.photo_path + '" alt = "' + res.prod_name +'">';
			$('.prodimg').html(str);
			
			//정보 출력
			code += '<div class = "column_top">';
			code += '	<div class = "detail_main_title">';
			code += '		<h3 class = "brand">' + res.brand_name + '</h3><br>';
			code += '		<p class = "title">' + res.prod_name + '</p>';	
			code += '	</div>';//detail_main_title끝
			code += '	<div class = "product_figure_wrap lg">';//클래스 두개임
			code += '		<div class = "detail_size">';
			code += '			<div class = "title">';
			code += '				<span class = "title_txt">사이즈</span>';
			code += '			</div>';
			code += '			<div class = "size">';
			code += '				<span class = "btn_size">모든 사이즈</span>'//클릭이벤트 모달 줘야함
			code += '			</div>';
			code += '		</div>';//detail_size 끝
			code += '		<div class = "detail_price">';
			code += '			<div class = "title">';
			code += '				<span class = "title_txt">최근 거래가</span>';
			code += '			</div>';
			code += '			<div class = "price">';
			code += '				<div class = "amount">';
			code += '					<span class = "num">' + res.prod_resell + '</span>'
			code += '					<span class = "won">원</span>'
			code += '				</div>';
			code += '			</div>';
			code += '		</div>';//detail_price 끝
			code += '	</div>';//product_figure_wrap lg 끝
			
			code += '	<div class = "btn_wrap">';
			code += '		<div class = division_btn_box>';
			code += '			<a href = "" class = "btn_division buy">';//서블릿 보내서 페이지 이동
			code += '				<strong class = "buytitle">구매</strong>';
			code += '				<div class = "price">';
			code += '					<span class = "amount">';
			code += '						<em class = "num">' + res.prod_resell + '</em>';
			code += '						<span class = "won">&nbsp;원</span>';
			code += '					<span>';
			code += '					<span class = "desc">즉시 구매가</span>';
			code += '				</div>';
			code += '			</a>';
			code += '			<a href = "/Kream/tempId2.do?prodid=' + res.prod_id + '" class = "btn_division sell">';//서블릿 보내서 페이지 이동
			code += '				<strong class = "seltitle">판매</strong>';
			code += '				<div class = "price">';
			code += '					<span class = "amount">';
			code += '						<em class = "num">' + res.prod_resell + '</em>';
			code += '						<span class = "won">&nbsp;원</span>';
			code += '					<span>';
			code += '					<span class = "desc">즉시 판매가</span>';
			code += '				</div>';
			code += '			</a>';
			code += '		</div>';//division_btn_box 끝
			code += '		<a href = "" class = "btn_like">';//클릭시 관심상품에 prod_id를 저장
			code += '			<span class = "btn_text">관심상품 담기</span>';//클릭하면 alert로 관심상품 담겼다고 알려주기
			code += '		</a>';
			code += '	</div>';//btn_wrap 끝
			code += '</div>';//column_top 끝
			
			code += '<div class = "product_info_wrap">';
			code += '<h3>상품 정보</h3>'
			code += '</div>';//product_info_wrap 끝
			
			$('.column_box').html(code);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		},
		dataType : 'json'
	})
})


</script>
<style type="text/css">

</style>

</head>
<body>

<h2>ShoeKream</h2>
<hr>

<!-- 부모 div -->
<div class = "content">
	
	<!-- 상품 사진 -->
	<div class = "column_bind">
		<div class = "prodimg">
			<span><%=prodid %></span>
		</div>
	</div>
	
	<!-- 상품 정보 -->
	<div class = "column">
		<div class = "column_box">
		
		</div>
	</div>
</div>

</body>
</html>














