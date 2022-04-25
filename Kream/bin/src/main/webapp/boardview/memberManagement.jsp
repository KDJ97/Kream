<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../js/adminBoard.js"></script>
<script type="text/javascript">
currentPage = 1;
$(function() {
	typevalue = "";
	wordvalue = "";
	
	memberList();
})
</script>
<style type="text/css">
div{
	margin: 0px;
	display: inline-block;
}
/*검색창 (search, optionList)*/
.navbar{
	float: right;
}
#sword{
	width: 400px;
}
.form-inline{
	margin-left:5px;
}

#stype{
	width: 150px;
}
/* page 리스트*/
.container{
	width:100%;
	margin: 0px;
	padding: 0px;
}
#pagelist{
	margin-left:500px;
}
table{
	width: 100%;
}
</style>
</head>
<body>
<h3>회원관리</h3><hr>
  <nav class="navbar navbar-expand-sm  navbar-info">
  
	 <select class="form-control" id="stype">
	   <option value="">전체</option>
	   <option value="user">일반사용자</option>
	   <option value="admin">관리자</option>
	 </select>
	 
	  <form class="form-inline" >
	     <input id="sword" class="form-control mr-sm-2" type="text" placeholder="Search">
	     <button id="search" class="btn btn-primary" type="button">Search</button>
	  </form>
	  
	  
  </nav>
  <br><br>
  <!--list출력   -->
 <div class="container">
 
 </div>
 
 <br><br>
 <!--page출력   -->
 <div id="pagelist">
 
 </div>
</body>
</html>