<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page pageEncoding="EUC-KR" %>

<%@ page import="com.model2.mvc.service.domain.*" %>

<%
	//Product product = (Product)request.getAttribute("product");
%>	

<html lang="ko">

<head>

	 <meta charset="EUC-KR">
	 
	 <!-- ���� : http://getbootstrap.com/css/    ����-->
	 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	 
	 <!-- ///////////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	 
	 <!-- Bootstrap Dropdown Hover CSS -->
	 <link href="/css/animate.min.css" rel="stylesheet">
	 <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
	 
	 <!-- Bootstrap Dropdown Hover JS -->
	 <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	 
	 <!-- //////////////////////////CSS//////////////////////////// -->
	 <style>
	 	 body  {
	 	 	  padding-top  : 50px;
	 	 }
	 </style>
	 
	 <!-- //////////////////////////// JavaScript //////////////////////////////// -->
	 <script type="text/javascript">
	 
	 	   //==> DOM Object GET 3���� ��� ==> 1.	$(tagName)	:	2.(#id)	  :    3.$(.className)
	 	   
	 	    //====================== ��ǰ�������� Event ó�� ======================
	 	    $(function() {
	 	    	 $(	"button"   ).on( "click"  ,  function() {
		 				self.location = "/product/updateProductView?prodNo=${product.prodNo}"
	   			   });
	 	    });
	 	    
	 </script>
	 
</head>


<body>

	<!-- ToolBar Start ///////////////////////////////////////////////// -->
	<jsp:include page="/layout/toolbar.jsp" />
	<!-- ToolBar End /////////////////////////////////////////////// -->
	
	<!-- ȭ�鱸�� div Start //////////////////////////////////////////// -->
	<div class="container">
	
		<div class="page-header">
			<h3 class="text-info">��ǰ��ȸ</h3>
			<h5 class="text-muted">��ǰ��<strong class="text-danger">�ֽ������� ����</strong>�� �ּ���.</h5>
		</div>
		
		<div class="row">
			<div class="col-xs-4 col-md-2"><strong>�� ǰ �� ȣ</strong></div>
			<div class="col-xs-4 col-md-2">${product.prodNo}</div>
		</div>
		
		<hr/>
		
		<div class="row">
			<div class="col-xs-4 col-md-2 "><strong>�� ǰ ��</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodName}</div>
		</div>
		
		<hr/>
		
		<div class="row">
			<div class="col-xs-4 col-md-2 "><strong>��ǰ��</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodDetail}</div>
		</div>
		
		<div class="row">
			<div class="col-xs-4 col-md-2 "><strong>��������</strong></div>
			<div class="col-xs-8 col-md-4">${product.manuDate}</div>
		</div>
		
		<div class="row">
			<div class="col-xs-4 col-md-2 "><strong>��  ��</strong></div>
			<div class="col-xs-8 col-md-4">${product.price}</div>
		</div>
		
		<div class="row">
			<div class="col-md-12 text-center ">
				<button type="button" class="btn btn-primary">��ǰ��������</button>
			</div>
		</div>
				
		<br/>
		
	</div>
	
</body>

</html>

