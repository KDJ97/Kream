<%@page import="kr.or.ddit.kream.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	MemberVO memberVo = (MemberVO)session.getAttribute("memberVo");
	String mem_email = null;
	String mem_auth = null;
	
	if(memberVo != null){
		mem_email = memberVo.getMem_email();
		if(memberVo.getAuthority() != null){
			mem_auth = memberVo.getAuthority();
		}
	}else{
		mem_email = "λΉνμ";
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="<%=request.getContextPath()%>/js/kakao.js"></script>
<script src = "<%=request.getContextPath()%>/js/searchProd.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel = "stylesheet" href = "/Kream/css/pagetopline.css">
<link rel = "stylesheet" href = "/Kream/css/prodSearchModal.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>


* {margin:0;padding:0;box-sizing:border-box;}
ul, li {list-style:none;}

[name="slide"] {display:none;}
.slidebox {width:100%;margin:0 auto;text-align:center;}
.slidebox img {    width: 100%;}
.slidebox .slidelist {
	white-space:nowrap;
	font-size:0;
	overflow:hidden;
}
.slidebox .slideitem {
	position:relative;
	display:inline-block;
	vertical-align:middle;
	width:100%;
	transition:all .35s;
}
.slidebox .slideitem label {
	position:absolute;
	z-index:1;
	top:50%;
	transform:translateY(-50%);
	padding:20px;
	border-radius:50%;
	cursor:pointer;
}
label.left {
	left:20px;
	background-color:#5F5F5F;
	background-image:url('/Kream/img/main/left-arrow.png');
	background-position:center center;
	background-size:50%;
	background-repeat:no-repeat;
}
label.right {
	right:20px;
	background-color:#5F5F5F;
	background-image:url('/Kream/img/main/right-arrow.png');
	background-position:center center;
	background-size:50%;
	background-repeat:no-repeat;
}

/* οΏ½λΉοΏ½μ ο§οΏ½ οΏ½λͺοΏ½οΏ½οΏ½μͺ */
.paginglist {text-align:center;padding:30px 0;}
.paginglist > li {display:inline-block;vertical-align:middle;margin:0 10px;}
.paginglist > li > label {display:block;padding:10px 30px;border-radius:10px;background:#ccc;cursor:pointer;}
.paginglist > li:hover > label {background:#333;}

[id="slide01"]:checked ~ .slidelist .slideitem {transform:translateX(0);animation:slide01 20s infinite;}
[id="slide02"]:checked ~ .slidelist .slideitem {transform:translateX(-100%);animation:slide02 20s infinite;}
[id="slide03"]:checked ~ .slidelist .slideitem {transform:translateX(-200%);animation:slide03 20s infinite;}
[id="slide04"]:checked ~ .slidelist .slideitem {transform:translateX(-300%);animation:slide04 20s infinite;}

@keyframes slide01 {
	0% {left:0%;}
	23% {left:0%;}
	25% {left:-100%;}
	48% {left:-100%;}
	50% {left:-200%;}
	73% {left:-200%;}
	75% {left:-300%;}
	98% {left:-300%;}
	100% {left:0%;}
}
@keyframes slide02 {
	0% {left:0%;}
	23% {left:0%;}
	25% {left:-100%;}
	48% {left:-100%;}
	50% {left:-200%;}
	73% {left:-200%;}
	75% {left:100%;}
	98% {left:100%;}
	100% {left:0%;}
}
@keyframes slide03 {
	0% {left:0%;}
	23% {left:0%;}
	25% {left:-100%;}
	48% {left:-100%;}
	50% {left:200%;}
	73% {left:200%;}
	75% {left:100%;}
	98% {left:100%;}
	100% {left:0%;}
}
@keyframes slide04 {
	0% {left:0%;}
	23% {left:0%;}
	25% {left:300%;}
	48% {left:300%;}
	50% {left:200%;}
	73% {left:200%;}
	75% {left:100%;}
	98% {left:100%;}
	100% {left:0%;}
}

 body {
        width: 100%;
        height: 100%;
      }


</style>
<script type="text/javascript">
$(function(){
	mem_email = "<%=mem_email%>";
	mem_auth = "<%=mem_auth%>";	
	if(mem_email == "λΉνμ"){
		$('#member').hide();
		$('#admin').hide();
		$('#nomember').show();
	}else{
		if(mem_auth=="admin"){
			$('#member').hide();
			$('#admin').show();
			$('#nomember').hide();
		}else{
			$('#member').show();
			$('#admin').hide();
			$('#nomember').hide();
		}
	}
	
	$('#search_modal').on('click', function(){
		$('#searchmodal').modal('show');
	})
	
	//κ²μ λͺ¨λ¬μ κ²μλ²νΌμ λλ₯Ό μ μ΄λ²€νΈ
   	$('#search_btn').on('click', function(){
      	//κ²μν κ°μ κ°μ Έμ λ©μλλ‘ λ³΄λ΄μ£ΌκΈ°
      	input = $('#search_prod').val();
      
      	//κ²μ λ΄μ­ λͺ¨λ¬μ μΆλ ₯
      	prodSearch(input);
   	})
});

</script>



</head>
<body>
<div class="top_line fixed-top border-bottom text-end" style="height: 50px; display: flex; line-height: 50px; background: white;">
	<ul class = "text-end" style="margin-left: auto;">
		<li><a href="<%=request.getContextPath()%>/boardview/boardMain.jsp">κ³ κ°μΌν°</a></li>
		<li><a id="member" href="<%= request.getContextPath() %>/MyPage.do" style="display: none;">λ§μ΄νμ΄μ§</a></li>
		<li><a id="nomember" href="<%= request.getContextPath() %>/member/loginForm.jsp">λ§μ΄νμ΄μ§</a></li>
		<li><a id="admin" href="<%= request.getContextPath() %>/boardview/adminMain.jsp" style="display: none;">κ΄λ¦¬μ</a></li>
		

<%
	if(memberVo == null){
%>
		<li id="login"><a href="<%= request.getContextPath() %>/member/loginForm.jsp">λ‘κ·ΈμΈ</a></li>

		
<% }else{ %>
		<li id="logout"><a href="<%= request.getContextPath() %>/Logout.do">λ‘κ·Έμμ</a></li>
<%
	}
%>
	</ul>
</div>

<div class="top_line fixed-top border-bottom text-end" style="height: 68px; align-items: center; display: flex; padding:0px 40px; background: white; margin-top: 50px;">
    <a href = "/Kream/member/main.jsp">
   		<h3 style=" margin:0px 0px; align-content: center; font-style: oblique; font-weight: 900;">
   		SHOEKREAM
   		</h3>
   </a>
   <div class="gnb_area">
      <nav class="gnb">
         <ul class="gnb_list">
            <li class="gnb_item">
               <a  class="gnb_link" href="http://localhost/Kream/prodview/prodReviewPage.jsp">STYLE</a>
            </li>
            <li class="gnb_item" style="margin-left: 30px;">
               <a class="gnb_link" href="http://localhost/Kream/prodview/prodList.jsp">SHOP</a>
            </li>
            <li class="gnb_item search" style="margin-left: 30px;">
               <a href = "#" class="gnb_link" id = "search_modal">SEARCH</a>
            </li>
         </ul>
      </nav>
   </div>
</div>


<div class="slidebox">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<input type="radio" name="slide" id="slide04">
	<ul class="slidelist">
		<li class="slideitem">
			<div>
				<label for="slide04" class="left"></label>
				<label for="slide02" class="right"></label>
				<a><img src="/Kream/img/main/000000.PNG"></a>
			</div>
		</li>
		<li class="slideitem">
			<div>
				<label for="slide01" class="left"></label>
				<label for="slide03" class="right"></label>
				<a><img src="/Kream/img/main/1111.PNG"></a>
			</div>
		</li>
		<li class="slideitem">
			<div>
				<label for="slide02" class="left"></label>
				<label for="slide04" class="right"></label>
				<a><img src="/Kream/img/main/2222.PNG"></a>
			</div>
		</li>
		<li class="slideitem">
			<div>
				<label for="slide03" class="left"></label>
				<label for="slide01" class="right"></label>
				<a><img src="/Kream/img/main/33333.PNG"></a>
			</div>
		</li>
	</ul>
</div>


<div class="jumbotron jumbotron-fluid text-center" id="footerbody" style="margin-top: 100px;">
	
	<div class="info_list">
		<p>νμ΄λ¦ : SHOEKREAM</p>
		<p>μ¬μμ₯μμ¬μ§: λμ κ΄μ­μ μ€κ΅¬ κ³λ£‘λ‘ 846 3μΈ΅ 304νΈ</p>
		<p>νΈμ€ν μλΉμ€ : λλμΈμ¬κ°λ°μ</p>
	
		
		
		<table>
			<tr>
				<td>PL</td>
				<td>:κ°λμ£Ό&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
			
			<tr>
				<td>TA</td>
				<td class="td_last">:μ€μ§ν&nbsp;</td>
				<td>AA</td>
				<td>:κ³½μ±μ</td>
			</tr>
			
			<tr>
				<td>UA</td>
				<td class="td_last">:κΉλ―Όμ§&nbsp;</td>
				<td>DA</td>
				<td>:λΈνμ§</td>
			</tr>
		</table>
	</div>
	
	
	
	<div class="customer_service">
		<strong>
			κ³ κ°μΌν°
			<a href="tel:042-939-5559">042-939-5559</a>
		</strong>
		<p>μμμκ° νμΌ 09:00 - 17:30</p>
		<p>μ μ¬μκ° νμΌ 12:50 - 13:40</p>
		<p>μμ¨νμ΅ μκ° νμΌ 5:30 - 22:00</p>
		<p>μμ¨νμ΅ μκ° μ£Όλ§ 9:00 - 18:00</p>
	</div>
</div>

<div class = "modal" id = "searchmodal">
	<div class="modal-dialog">
    	<div class="modal-content search_modal_content">
      
	        <!-- Modal Header -->
	        <div class="modal-header">
	          <h4 class="modal-title">μν κ²μ</h4>
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>
        
        	<!-- Modal body -->
        	<div class="modal-body">
        		<div class = "modal_select_area_search" showlayer = "true">
        			<input type = "text" id = "search_prod" name = "search_prod">
        			<input type = "button" id = "search_btn" name = "search_btn" value = "κ²μ">
        		</div>
        		<div id = "modal_prod_search">
        		</div>
        	</div>
        	        <!-- Modal footer -->
	        <div class="modal-footer">
	          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	        </div>
		</div>
	</div>
</div>
</body>
</html>