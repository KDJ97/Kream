/**
 * 
 */
 
 var prodList = function(){
	$.ajax({
		url : '/Kream/prodList.do',
		type : 'get',
		success : function(res){
			str = "";
			$.each(res, function(i, v){
				str += "상품명 : " + v.prod_name + "<br>";
			})
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		},
		dataType : 'json'
	})
}