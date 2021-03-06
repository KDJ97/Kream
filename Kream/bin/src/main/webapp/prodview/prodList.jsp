<%@page import="kr.or.ddit.kream.vo.LprodVo"%>
<%@page import="kr.or.ddit.kream.vo.MainPageProdVo"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "/Kream/css/prodMain.css">
<title>Insert title here</title>
<style>
</style>
<script src = "<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	//상품 리스트 정보 요청
	$.ajax({
		url : '/Kream/prodList.do',
		type : 'get',
		success : function(res){
			
			str = "";
			
			$.each(res, function(i, v){
				//상품 정보 출력
				str += '<div class = "search_result_item">';
				str += '<a href = "/Kream/tempId.do?prodid=' + v.prod_id + '" class = "item_inner">';
				//href->상품상세페이지
				str += '<img alt="' + v.prod_name + '"	src="' + v.photo_path + '" class="image">';
				str += '<p class="brand">' + v.brand_name + '</p>';
				str += '<p class="name">' + v.prod_name +'</p>';
				str += '</a>';
				str += '</div>';
			
				$('.search_result_list').html(str);
				
				console.log(v.prod_id);
			})
// 			location.href('prodDetail.jsp?')
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		},
		dataType : 'json'
	})
	
// 	$('')
	
	$('.filter_list').on('click', function(){
		// 다시 누르면 들어가야함
		
		$('.filter_menu').show();
		
		$.ajax({
			url : '/Kream/prodCategory.do',
			type : 'get',
			
			success : function(res){
				
				str = "<ul class = 'menu_link'>";
				
				$.each(res, function(i, v){
					str += "<li class = 'menu'><input type = 'checkbox' id = '" + v.lprod_id + "'>" + v.lprod_nm + "</li>";
				})
				str += "</ul>";
				
				$('.filter_menu').html(str);
				
			},
			error : function(xhr){
				alert('상태 : ' + xhr.status);
			},
			dataType : 'json'
		})
		
	})
	
})


</script>

</head>
<body>
<h1>SHOP</h1>
<hr>

<div class = "content">

	<div class = "search_filter">
		<div class = "filter_status">
			<div class = "status_box">
				<span class = "status_txt">필터</span>
			</div>
		</div>
		<div class = "filter_list">
			<div class = "filter_title">
				<div class = "title_box">
					<span class = "main_title">카테고리</span><br>
					<span class = "placeholder">모든 카테고리</span>
				</div>
			</div>
			<div class = "filter_menu" style = "display : none;">
			</div>
			</div>
		</div>

<!-- 상품 리스트 출력 -->
		<div class = "search_result_list"> <!-- 상품들이 출력될 div -->
		</div>
</div><!-- content 끝 -->
</body>
</html>