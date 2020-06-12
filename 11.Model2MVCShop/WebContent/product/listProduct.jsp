<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page pageEncoding="EUC-KR" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%-- /////////////////////// EL / JSTL �������� �ּ� ó�� ////////////////////////

<%@ page import="java.util.List" %>

<%@ page import="java.util.*"  %>
<%@ page import="com.model2.mvc.service.domain.*" %>
<%@ page import="com.model2.mvc.common.*" %>
<%@ page import="com.model2.mvc.common.util.CommonUtil" %>

<%
	List<Product> list= (List<Product>)request.getAttribute("list");
    Page resultPage=(Page)request.getAttribute("resultPage");
    
    Search search = (Search)request.getAttribute("search");
    //==> null �� ""(nullString)���� ����
	String searchCondition = CommonUtil.null2str(search.getSearchCondition());
    String searchKeyword = CommonUtil.null2str(search.getSearchKeyword());
%> --%>

<!DOCTYPE html>

<html lang="ko">

<head>
<title>��ǰ �����ȸ</title>

	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
		<!--  Bootstrap Dropdown Hover CSS -->
	<link href="/css/animate.min.css" rel="stylesheet">
	<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
		<!-- Bootstrap Dropdown Hover JS -->
	<script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	 
	 
	  <!-- jQuery UI toolTip ��� JS -->
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"></script>
	 <!-- jQuery UI toolTip ��� JS-->
	 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	 
	  <!--  ////////////////// CSS ////////////////////////////// -->
	  <style>
	  	body {
	  			padding-top : 50px;
	  	}
	  </style>
	  
	  <!--  /////////////////////////// JavaScript ////////////////////////// -->
	  <script type="text/javascript">
	  
	  
	  		//=============== �˻� / page �ΰ��� ��� ��� Event ó�� ======================
	  		function fncGetUserList(currentPage) {
	  			$("#currentPage").val(currentPage)
	  			$("form").attr("method" , "POST").attr("action" , "/product/listProduct").submit();
	  		}
	  		
	  		//=============== prodNo �� ��ǰ�������� Event ó��(Click) ===================
	  			$(function() {
	  				alert($(this))
	  				$(  "td:nth-child(2)" ).on("click" , function() {
	  					  self.location ="/product/getProduct?prodNo="+$(this).text().trim();
	  				});
	  				
	  				//==> prodNo LINK Event End User ���� ���� �� �ֵ���
	  				$( "td:nth-child(2)").css("color" , "red");
	  				
	  			});
	  		
	  		//============== prodNo �� ȸ���������� Event ó�� (double Click)=======================
	  			$(function() {
	  				
	  				//==> DOM Object GET 3���� ��� ==> 1. $(tagName)	:	2.(#id)		:	3.$(.className)
	  				$(	"td:nth-child(5) > i" ).on("click" , function() {
	  					
	  					var prodNo = $(this).next().val();
	  					
	  					$.ajax({
	  						
	  								url : "/product/json/getProduct/"+prodNo ,
	  								method : "GET" ,
	  								dataType : "json" ,
	  								headers : {
	  									"Accept"  :  "application/json",
	  									"Content-Type"  :  "application/json"
	  								},
	  								success : function(JSONData , status){
	  									
	  									var displayValue = "<h6>"
	  									
	  																+"��ǰ��ȣ : "+JSONData.prodNo+"<br/>"
	  																+"��ǰ�� : "+JSONData.prodName+"<br/>"
	  																+"��ǰ�� : "+JSONData.prodDetail+"<br/>"
	  																+"���� : "+JSONData.price+"<br/>" 
	  																+"</h6>";
	  																
	  																
	  									$("h6").remove();
	  									$( "#"+prodNo+"").html(displayValue);
	  									
	  								}
	  				});
	  			});		
	  				//==> prodNo LINK Event End User ���� ���� �� �ֵ���
	  				$( ".ct_list_pop td:nth-child(3)").css("color" , "red");
	  				$("h6").css("color" , "red");
	  				
	  				//==> �Ʒ��� ���� ������ ������?
	  				$(".ct_list_pop:nth-child(4n+6)").css("background-color" , "whitesmoke");
	  		
	  			});
	  </script>

</head>

<body>

	<!-- ToolBar Start ////////////////////////////// -->
	<jsp:include page="/layout/toolbar.jsp"/>
	<!-- ToolBar End -->
	
	<!-- ȭ�鱸�� div Start /////////////////////////// -->
	<div class="container">
	
		<div class="page-header text-info">
			<h3>��ǰ��ȸ</h3>
		</div>

	<!-- table ���� �˻� Start /////////////////////////////// -->
		<div class="row">
		
			<div class="col-md-6 text-left">
				<p class="text-primary">
					��ü ${resultPage.totalCount } �Ǽ�, ����${resultPage.currentPage}		������
				</p>
			</div>
			
			<div class="col-md-6 text-right">
				<form class="form-inline" name="detailForm">
				
					<div class="form-group">
						<select class="form-control" name="searchCondition" >
							<option value="0"	${  !  empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>��ǰ��ȣ</option>
							<option value="1"	${  !  empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>��ǰ��</option>
						</select>
					</div>
					
					<div class="form-group">
						<label class="sr-only" for="searchKeyword">�˻���</label>
						<input type="text" class="form-control" id="searchKeyword" name="searchKeyword"		placeholder="�˻���"
									value="${! empty search.searchKeyword ? search.searchKeyword : '' }"	>
					</div>
					
					<button type="button" class="btn btn-default">�˻�</button>
					
					<!--  PageNavigation ���� ������ ���� ������ �κ� -->
					<input type="hidden" id="currentPage" name="currentPage" value=""/>
			
				</form>
			</div>
			
		</div>
	<!--  table ���� �˻� Start ///////////////////////////////////// -->
	
	<!-- table Start ///////////////////////////// -->
	<table class="table table-hover table-striped">
	
		<thead>
			<tr>
				<th align="center">No</th>
				<th align="left" >��ǰ��ȣ</th>
				<th align="left" >��ǰ��</th>
				<th align="left" >����</th>
			</tr>
		</thead>
		
		<tbody>
		
		
			<c:set var="i" value="0" />
			<c:forEach var="product" items="${list}">
			  <c:set var="i" value="${ i+1 }"	/>
			  <tr>
			  
			 	<td align="center">${ i }</td>
			 	<td align="left" title="Click : ��ǰ���� Ȯ��">${product.prodNo}</td>
			 	<td align="left">${product.prodName}</td>
			 	<td align="left">${product.price}</td>
			 	<td align="left">
			 		<i class="glyphicon glyphicon-ok" id= "${product.prodNo}"></i>
			 		<input type="hidden" value="${product.prodNo}">
			 	</td>
			  </tr>
			</c:forEach>
		
		
		</tbody>
		
	</table>
	<!--  table End ///////////////////////////////// -->
	
   </div>
   <!--  ȭ�鱸�� div End ///////////////////////////// -->
   
   
   <!-- PageNavigation Start... -->
   <jsp:include page="../common/pageNavigator_new.jsp"/>
   <!-- PageNavigation End... -->
   
</body>

</html>

