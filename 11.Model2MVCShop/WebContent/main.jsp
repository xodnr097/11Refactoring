<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="UTF-8"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--   jQuery , Bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  CSS 추가 : 툴바에 화면 가리는 현상 해결 :  주석처리 전, 후 확인-->
	<style>
        body {
            padding-top : 70px;
        }
   	</style>
   	
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
     <script type="text/javascript"> 
     	$(function(){
     		
   		$(  "#buttonfrance"  ).on("click" , function() { 
  		    	
      			var translateMessage = $("#ii").children().html(); 
      			
      			
     			
      			$.ajax( 
     					{
       						url : "/papago/json/playpapago/"+translateMessage ,
       						method : "GET" , 
      						dataType : "json" , 
     						headers : {
      							"Accept" : "application/json" , 
     							"Content-Type" : "application/json" 
     						}, //end header
      						success : function(JSONData , status) { 	
      							var translated = confirm(JSONData.message.result.translatedText);
     						} //end success
     					}) //end ajax	    	
     						alert(translated)
 	    });//end button function 
 	    
 	    
 	   $(  "#buttonkorean"  ).on("click" , function() { 
		    	
 			
//  		  $.ajax( 
// 					{
//  						url : "/papago/json/playpapago2" ,
//  						method : "GET" , 
//  						data : {
//  											name : $("")
//  						}
// 						dataType : "json" , 
// 						headers : {
// 							"Accept" : "application/json" , 
// 							"Content-Type" : "application/json" 
// 						}, //end header
// 						success : function(JSONData , status) { 	
// 							var translatedkr = confirm(JSONData.message.result.translatedText);
// 						} //end success
// 					}) //end ajax	 
 		   
 		   					var translatedkr = confirm("오늘 나의 불행은 언젠가 내가 잘못 보낸 시간의 보복이다")	    	

 							alert(translatedkr)
    	});//end button function 
      	
  	   $(  "#buttonfrance3"  ).on("click" , function() { 
	    				var message = $('.c').text();
  		   				alert(message)
			
		  $.ajax( 
					{
						url : "/papago/json/playpapago2/"+message ,
						method : "GET" , 
						dataType : "json" , 
						headers : {
							"Accept" : "application/json" , 
							"Content-Type" : "application/json" 
						}, //end header
						success : function(JSONData , status) { 	
							var translatedfr = confirm(JSONData.message.result.translatedText);
						} //end success
					}) //end ajax	 
					var translatedkr = confirm("나는 다만 손에 닿을 수 있는 것을 추구할 뿐이다")	
							alert(translatedfr)
							
 							alert(translatedkr)
 	});//end button function 
    	
    	
     	}) 		    		    
	 </script> 

	 	
</head>
	
<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  아래의 내용은 http://getbootstrap.com/getting-started/  참조 -->	
   	<div class="container ">
      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>Model2MVCShop </h1>
        <p>J2SE , DBMS ,JDBC , Servlet & JSP, Java Framework , HTML5 , UI Framework 학습 후 Mini-Project 진행</p>
     </div>
    </div>

	<!-- 참조 : http://getbootstrap.com/css/   : container part..... -->
	<div class="container" id="ii">
        <h3>Mon malheur aujourd'hui est la vengeance d'un mauvais moment.</h3>
  		<div class="row">
	  		<div class="col-md-12 text-center ">
	  			<button type="button" class="btn btn-primary" id="buttonfrance">영어</button>
	  		</div>
		</div>
		<br/>
		<br/>
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  			<button type="button" class="btn btn-primary" id="buttonkorean">한국어</button>
	  		</div>
		</div>
        
     <div>  
  	 	<h3>"싸울 수 있는 날엔 싸우면 되고"</h3>
  	 	<h3>"싸울 수 없는 날엔 지키면 되고"</h3>
  	 	<h3>"지킬 수 없는 날엔 항복하면 되고"</h3>
  	 	<h3>"항복할 수 없는 날엔 그날 죽으면 그만이네"</h3>
         <h5>선덕여왕<드라마></h5>
     </div> 
         <br/>
         <br/>
         
         <p class="a">나는 인내하는 데에는 마음을 강하게 하고<p>  		
    
         <p class="b">욕심을 부리는 데에는 마음을 둔하게 하고 있다</p>
     
         <p class="c">yesterday</p>
         <p class="d">Je cherche ce que je peux mettre dans mes mains.</p>
  	    <div class="row">
	  		<div class="col-md-12 text-center ">
	  			<button type="button" class="btn btn-primary" id="buttonfrance3">영어</button>
	  		</div>
		</div>
  	
  	
  	
  	</div>
  	


</body>

</html>