<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*nav, iframe 전체 크기 조정*/
#board{
	width: 1450px;
	height: 100%;
	margin: 0px auto;
}

/*nav*/
#leftnav{
	margin: 10px;
	float: left;
	height: auto;
	width: 13%;
}
#leftnav ul{
	list-style: none;
	padding: 5px;
}

#leftnav ul li:hover{
	background: #f2f4f7;
	font-weight: bold;
}

/*게시판 리스트, iframe*/
#boardList{
	margin-top: 20px;
	float: right;
	width: 85%;
	height: 800px;
}
#main{
	height: 100%;
}
iframe {
	border: none;
	width: 100%;
	height: 100%;
}

header h1{
	display: flex;
	margin-left: 40px;
}

</style>
</head>
<body>
<!-- 이후 header추가 -->
<header>
<h1><a>KREAM</a></h1>
</header>
<div id="board">
	<div id="leftnav">
		<h1>관리</h1>
		<ul>
			<li>회원관리</li><hr>
			<li>공지사항</li><hr>
			<li>Q&A</li><hr>
			<li>물품등록</li><hr>
		</ul>
	</div>

	<div id="boardList">
		<article id="main">
			<iframe src="./memberManagement.jsp" name="ifr"></iframe>
		</article>
	</div>
</div>
</body>
</html>