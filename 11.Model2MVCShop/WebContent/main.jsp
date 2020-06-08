<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

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
	
	<!--  CSS �߰� : ���ٿ� ȭ�� ������ ���� �ذ� :  �ּ�ó�� ��, �� Ȯ��-->
	<style>
        body {
            padding-top : 70px;
        }
   	</style>
   	
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
     <script type="text/javascript"> 
		     var aa = true;
		     function playss(){
		
		    if(aa){
		     player.play();
		     aa = false;
		     }else{
		     player.pause();player.currentTime=0;
		     aa = true;
		     }
		     }


     
     
			(function(){    
			
			     if(!/complete|interactive/.test(document.readyState)) 
			
			         return setTimeout(arguments.callee); 
			
			      
			
			     var $audio; 
			
			     var all = document.body.getElementsByTagName('*');
			
			     var i = all.length;
			
			     var group;
			
			     var j;
			
			     var node;
			
			     while(i-->0){
			
			      group = all[i];
			
			      if(group.className.indexOf('sounds') > -1){
			
					j = group.childNodes.length;
					
					while(j-->0){
					
					node = group.childNodes[j];
					
					if(node.nodeType==1 && node.getAttribute('data-sound')){
					
					node.onclick = audio;
					
					}
					
					}
					
					      }
					
					     }
					
					     return; 
			
			      
			
			     function audio(){ 
			
			            if(!$audio){ 
			
			                   $audio = document.createElement('audio'); 
			
			                   $audio.type = 'audio/mpeg'; 
			
			                   $audio.autoplay = true; 
			
			                   (document.body || document.documentElement).appendChild($audio); 
			
			            } 
			
			            $audio.src = this.getAttribute('data-sound'); 
			
			     } 
			
			})() 

</script> 

<div class="sounds">

<a data-sound="../sound/Moon-02-How.mp3">������-02-���.mp3</a> 



</div>
	 	
	
</head>
	
<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  �Ʒ��� ������ http://getbootstrap.com/getting-started/  ���� -->	
   	<div class="container ">
      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>Model2MVCShop </h1>
        <p>J2SE , DBMS ,JDBC , Servlet & JSP, Java Framework , HTML5 , UI Framework �н� �� Mini-Project ����</p>
     </div>
    </div>

	<!-- ���� : http://getbootstrap.com/css/   : container part..... -->
	<div class="container">
        <h3>���������� �̷��� ���ߴ�.</h3>
        <p>"���� ���� ������ ������ ���� �߸� ���� �ð��� �����̴�."</p>
        </br>
        </br>
        </br>
        <audio id="player" controls="controls" loop="loop" preload="auto">
			<source src="../sound/Moon-02-How.mp3" type="audio/mpeg" />
			</audio>

 			<br />
			<img src="../images/uploadFiles/lama.jpg" style="cursor:Pointer;" onclick="javascript:playss()" />
        
  	 	<h3>"... �庮�� �����ϰ� ������ �ʴ� ������� �ɷ������� �����մϴ�. �庮��. ����� �ƴ϶� '�ٸ�' ������� ���߰� �Ϸ��� �ű� �ִ� ��������."</h3>
         <h3>��������</h3>
         <p>�ູ�� ���� �����.</p>
         <p>�����ϴ� ���� �ϴ� ���� �Ƹ���,</p>
         <p>���� �ϴ� ���� �����ϴ� ���Դϴ�.</p>
  	 </div>

</body>

</html>