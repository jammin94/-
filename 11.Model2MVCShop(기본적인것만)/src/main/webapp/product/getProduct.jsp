<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
 		body {
            padding-top : 50px;
        }
     </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= 회원정보수정 Event  처리 =============	
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 $( "button:contains('수정')" ).on("click" , function() {
					self.location = "/product/updateProduct/${product.prodNo }"
				});
			 $( "button:contains('구매')" ).on("click" , function() {
					self.location = "/purchase/addPurchase/${product.prodNo }"
				});
			 $( "button:contains('확인')" ).on("click" , function() {
					self.location = "/product/listProduct"
				});
		});
		
	</script>
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
		<div class="page-header">
			<div class="row">
				<div class="col-md-offset-5">
			       <h3 class=" text-info">상품상세조회</h3>
			       <h5 class="text-muted"></h5>
			    </div>
	       </div>
	    </div>
	    
	    <div class="row">
		  <div class="col-xs-6 col-md-3 col-md-offset-3">	      
		      <c:forEach var="i" items= "${list}" varStatus="status" >
			  <div class="col-sm-3 col-md-2">
			    <div class="thumbnail">
			      <img src="/images/uploadFiles/${i.fileName}"/></a>   	
			    </div>
			  </div>
			</c:forEach>
		  </div>
		</div>
	
		<div class="row">
	  		<div class="col-xs-4 col-md-2 col-md-offset-2"><strong>상품명</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodName }</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 col-md-offset-2"><strong>가격</strong></div>
			<div class="col-xs-8 col-md-4">${product.price }	</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 col-md-offset-2"><strong>상품상세정보</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodDetail }</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 col-md-offset-2"><strong>제조일자</strong></div>
			<div class="col-xs-8 col-md-4">${product.manuDate }</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 col-md-offset-2"><strong>등록일자</strong></div>
			<div class="col-xs-8 col-md-4">${product.regDate}</div>
		</div>
		
		<hr/>
		
		<div class="row">
			<div class="col-md-4 text-center col-md-offset-1">
			<c:if test="${user.role eq 'admin' }">
				 <button type="button" class="btn btn-primary">수정</button>
	  		</c:if>
	  			<button type="button" class="btn btn-primary">구매</button>
	  			<button type="button" class="btn btn-primary">확인</button>
	  		</div>
		</div>
		
		<br/>
		
 	</div>
 	<!--  화면구성 div Start /////////////////////////////////////-->

</body>

</html>