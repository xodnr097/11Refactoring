		<%@ page language="java" contentType="text/html; charset=EUC-KR"
		    pageEncoding="EUC-KR"%>
		<!DOCTYPE html>
		<html lang="ko">
		<head>
		<title>��ǰ���</title>
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
		
			//==================  "���"      Event  ���� ==================
			 	$(function()    {
			 		
			 		$('.i').on("click" , function() {
			 			alert(  );
			 			//show_calendar('document.detailForm.manuDate', document.detailForm.manuDate.value);
			 			show_calendar('document.detailForm.manuDate', document.detailForm.manuDate.value);
			 		});
			 	});
			 					
				$(function()	{
				 //==> DOM Object GET 3���� ��� ==> 1. $(tagName)  :  2.(#id)  :  3.$(.className)
				 $(  "button.btn.btn-primary").on("click" , function() {
					fncAddProduct();	 
				 });
			 });
			
			
// 			 $(function() {
// 				 //==> DOM Object GET
// 			 	  $("button.btn.btn-info").on("click" , function() {
// 			 		 popWin
// 			 		 = window.open("/product/prodNameCheckDuplication.jsp",
// 			 				 						"popWin",
// 			 				 						"left=300,top=200,width=780,height=130,marginwidth=0,marginheight=0,"+
// 			 				 						"scrollbars=no,scrolling=no,menubar=no,resizable=no");  
// 			 	  });
// 			 });
		
			function fncAddProduct(){
				//Form ��ȿ�� ����
			 	//var name = document.detailForm.prodName.value;
				var name =$("input[name='prodName']").val();
				//var detail = document.detailForm.prodDetail.value;
				var detail =$("input[name='prodDetail']").val();
				//var manuDate = document.detailForm.manuDate.value;
				var manuDate=$("input[name='manuDate']").val();
				//var price = document.detailForm.price.value;
				var price = $("input[name='price']").val();
			
				if(name == null || name.length<1){
					alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
					return;
				}
				if(detail == null || detail.length<1){
					alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
					return;
				}
 				if(manuDate == null || manuDate.length<1){
 					alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
 					return;
 				}
				if(price == null || price.length<1){
					alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
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
			
			<!--  ȭ�鱸�� div Start /////////////////////////////////////////////////////// -->
				<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="bg-primary text-center">�� ǰ �� ��</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal" name='detailForm'>
		
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">�� ǰ ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName" >
<!-- 		       <span id="helpBlock" class="help-block"> -->
<!-- 		      	<strong class="text-danger">��ǰ��ȣ�� ����Ұ�</strong> -->
<!-- 		      </span> -->
		    </div>
<!-- 		    <div class="col-sm-3"> -->
<!-- 		      <button type="button" class="btn btn-info">�ߺ�Ȯ��</button> -->
<!-- 		    </div> -->
		    </div>
		  
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">��ǰ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" placeholder="��ǰ��">
		    </div>
		  </div>
		  		  
<!-- 		  <td width="104" class="ct_write"> -->
<!-- 			�������� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/> -->
<!-- 		</td> -->
<!-- 		<td bgcolor="D6D6D6" width="1"></td> -->
<!-- 		<td class="ct_write01"> -->
<!-- 			<input type="text" readonly="readonly" name="manuDate"  	 -->
<!-- 						class="ct_input_g" style="width: 100px; height: 19px" maxLength="10" minLength="6">&nbsp; -->
<!-- 						<img 	src="../images/ct_icon_date.gif" width="15" height="15"  -->
<!-- 									onclick="show_calendar('document.detailForm.manuDate', document.detailForm.manuDate.value)" /> -->
<!-- 		</td>		   -->
		  		  
		  <div class="form-group">
		  	<label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">��������</label>
		  	<div class="col-sm-4">
		  		<input type="text" class="form-control" id="manuDate" name="manuDate" placeholder="��������">
				<img src="../images/ct_icon_date.gif" width="15" height="15" class='i' />	  	
		  	</div>
		  </div>
		  		  		  
		  <div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" placeholder="����">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ�̹���</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="fileName" name="fileName" placeholder="��ǰ�̹���">
		      <span id="helpBlock" class="help-block">
		      	 <strong class="text-danger"></strong>
		      </span>
		    </div>
		  </div>  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >�� &nbsp;��</button>
			  <a class="btn btn-primary btn" href="#" role="button">��&nbsp;��</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->	
		</body>
		</html>