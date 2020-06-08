		<%@ page language="java" contentType="text/html; charset=EUC-KR"
		    pageEncoding="EUC-KR"%>
		<!DOCTYPE html>
		<html lang="ko">
		<head>
		<title>상품등록</title>
			<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="/css/admin.css" type="text/css">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../javascript/calendar.js"></script>
		
		<style>
			body > div.container{
				 border: 3px solid #D6CDB7;
				 margin-top: 10px;
			}
		</style>
		
		<script type="text/javascript">
		
			//==================  "등록"      Event  연결 ==================
			 $(function()	{
				 //==> DOM Object GET 3가지 방법 ==> 1. $(tagName)  :  2.(#id)  :  3.$(.className)
				 $(  "button.btn.btn-primary").on("click" , function() {
					fncAddProduct();	 
				 });
			 });
			
			
			 $(function() {
				 //==> DOM Object GET
			 	  $("button.btn.btn-info").on("click" , function() {
			 		 popWin
			 		 = window.open("/product/prodNameCheckDuplication.jsp",
			 				 						"popWin",
			 				 						"left=300,top=200,width=780,height=130,marginwidth=0,marginheight=0,"+
			 				 						"scrollbars=no,scrolling=no,menubar=no,resizable=no");  
			 	  });
			 });
		
			function fncAddProduct(){
				//Form 유효성 검증
			 	//var name = document.detailForm.prodName.value;
				var name =$("input[name='prodName']").val();
				//var detail = document.detailForm.prodDetail.value;
				var detail =$("input[name='prodDetail']").val();
				//var manuDate = document.detailForm.manuDate.value;
				var manuDate=$("input[name='manuDate']").val();
				//var price = document.detailForm.price.value;
				var price = $("input[name='price']").val();
			
				if(name == null || name.length<1){
					alert("상품명은 반드시 입력하여야 합니다.");
					return;
				}
				if(detail == null || detail.length<1){
					alert("상품상세정보는 반드시 입력하여야 합니다.");
					return;
				}
				if(manuDate == null || manuDate.length<1){
					alert("제조일자는 반드시 입력하셔야 합니다.");
					return;
				}
				if(price == null || price.length<1){
					alert("가격은 반드시 입력하셔야 합니다.");
					return;
				}
			
				//document.detailForm.action='/product/addProduct';
				//document.detailForm.submit();
				$("form").attr("method" , "POST").attr("action" , "/product/addProduct").submit();
			}
			
			function resetData(){
				document.detailForm.reset();
			}
		-->
		</script>
		</head>
		
		<body>
		
			<!-- ToolBar Start //////////////////////////////////// -->
			<div class="navbar navbar-default">
				<div class="container">
					<a class="navbar-brand" href="/index.jsp">Model2 MVC Shop</a>
				</div>
			</div>
			<!--  ToolBar End //////////////////////////////////////////////////// -->
			
			<!--  화면구성 div Start /////////////////////////////////////////////////////// -->
				<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="bg-primary text-center">상 품 등 록</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상 품 명</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName" placeholder="중복확인하세요"  readonly>
		       <span id="helpBlock" class="help-block">
		      	<strong class="text-danger">상품번호는 변경불가</strong>
		      </span>
		    </div>
		    <div class="col-sm-3">
		      <button type="button" class="btn btn-info">중복확인</button>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">상품상세</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" placeholder="상품상세">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="password2" class="col-sm-offset-1 col-sm-3 control-label">비밀번호 확인</label>
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="password2" name="password2" placeholder="비밀번호 확인">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">가격</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" placeholder="가격">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">상품이미지</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="fileName" name="fileName" placeholder="상품이미지">
		      <span id="helpBlock" class="help-block">
		      	 <strong class="text-danger">" -  " 제외 13자리입력하세요</strong>
		      </span>
		    </div>
		  </div>  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >등 &nbsp;록</button>
			  <a class="btn btn-primary btn" href="#" role="button">취&nbsp;소</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  화면구성 div end /////////////////////////////////////-->	
		</body>
		</html>