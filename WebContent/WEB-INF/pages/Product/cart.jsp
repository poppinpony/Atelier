<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.yurucamp.mallsystem.model.ProductBean" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Shopping Cart</title>
<link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' rel='stylesheet'>
<link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
<link rel="icon" href="<c:url value='/img/yuruIcon.png' />" type="image/x-icon">
<style>
								
body {
    color: #000;
    overflow-x: hidden;
    height: 100%;
    background-color: #fff;
    background-repeat: no-repeat
}

.plus-minus {
    position: relative
}

.plus {
    position: absolute;
    top: -4px;
    left: 2px;
    cursor: pointer
}

.minus {
    position: absolute;
    top: 8px;
    left: 5px;
    cursor: pointer
}

.vsm-text:hover {
    color: #FF5252
}

.book,
.book-img {
    width: 120px;
    height: 180px;
    border-radius: 5px
}

.book {
    margin: 20px 15px 5px 15px
}

.border-top {
    border-top: 1px solid #EEEEEE !important;
    margin-top: 20px;
    padding-top: 15px
}

.card {
    margin: 40px 0px;
    padding: 40px 50px;
    border-radius: 20px;
    border: none;
    box-shadow: 1px 5px 10px 1px rgba(0, 0, 0, 0.2)
}

input,
textarea {
    background-color: #F3E5F5;
    padding: 8px 15px 8px 15px;
    width: 100%;
    border-radius: 5px !important;
    box-sizing: border-box;
    border: 1px solid #F3E5F5;
    font-size: 15px !important;
    color: #000 !important;
    font-weight: 300
}

input:focus,
textarea:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: 1px solid #9FA8DA;
    outline-width: 0;
    font-weight: 400
}

button:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    outline-width: 0
}

.pay {
    width: 80px;
    height: 40px;
    border-radius: 5px;
    border: 1px solid #673AB7;
    margin: 10px 20px 10px 0px;
    cursor: pointer;
    box-shadow: 1px 5px 10px 1px rgba(0, 0, 0, 0.2)
}

.gray {
    -webkit-filter: grayscale(100%);
    -moz-filter: grayscale(100%);
    -o-filter: grayscale(100%);
    -ms-filter: grayscale(100%);
    filter: grayscale(100%);
    color: #E0E0E0
}

.gray .pay {
    box-shadow: none
}

#tax {
    border-top: 1px lightgray solid;
    margin-top: 10px;
    padding-top: 10px
}

.btn-blue {
    border: none;
    border-radius: 10px;
    background-color: #673AB7;
    color: #fff;
    padding: 8px 15px;
    margin: 20px 0px;
    cursor: pointer
}

.btn-blue:hover {
    background-color: #311B92;
    color: #fff
}

#checkout {
    float: left
}

#check-amt {
    float: right
}

@media screen and (max-width: 768px) {

    .book,
    .book-img {
        width: 100px;
        height: 150px
    }

    .card {
        padding-left: 15px;
        padding-right: 15px
    }

    .mob-text {
        font-size: 13px
    }

    .pad-left {
        padding-left: 20px
    }
}</style>
<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
<script type='text/javascript' src='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script>

</head>
<body oncontextmenu='return false' class='snippet-body'>
<div class="container px-4 py-5 mx-auto">
    <div class="row d-flex justify-content-center">
        <div class="col-5">
            <h4 class="heading">Shopping Cart</h4>
        </div>
        <div class="col-7">
            <div class="row text-right">
                <div class="col-4">
                    <h6 class="mt-2">單價</h6>
                </div>
                <div class="col-4">
                    <h6 class="mt-2">數量</h6>
                </div>
                <div class="col-4">
                    <h6 class="mt-2">小計</h6>
                </div>
            </div>
        </div>
    </div>
    <c:forEach varStatus="vs" var="orderbean" items="${ShoppingCart.content}">
    <form>
    <div class="row d-flex justify-content-center border-top">
        <div class="col-5">
            <div class="row d-flex">
                <div class="book"> <img src="${orderbean.value.image}" class="book-img"/> </div>
                <div class="my-auto flex-column d-flex pad-left">
                    <h6 class="mob-text">產品名字${orderbean.value.productName}</h6>
                    <p class="mob-text">產品種類${orderbean.value.category}211</p>
                </div>
            </div>
        </div>
        <div class="my-auto col-7">
            <div class="row text-right">
                <div class="col-4">
                    <p class="mob-text">$${orderbean.value.price}NT</p>                   
                </div>
                <div class="col-4">
                    <div class="row d-flex justify-content-end px-3">    
<%--                         <p class="mb-0" id="cnt1" onchange="update('${orderbean.value.productId},${orderbean.value.quantity}')">${orderbean.value.quantity}</p> --%>
                        <span class="mb-0" id="newQty${vs.index}">${orderbean.value.quantity}</span>
                        <div class="d-flex flex-column plus-minus" style="margin-left:10px;padding-bottom:10px">
                        <img src="<c:url value='/img/product/uparrow.png'/>"  class="vsm-text" height="15" style="margin-left:0px" onclick="updateup(${orderbean.value.productId},${orderbean.value.quantity},${vs.index})"/>
                        <img src="<c:url value='/img/product/downarrow.png' />" class="vsm-text" height="13" style="margin-top:5px" onclick="updatedown(${orderbean.value.productId},${orderbean.value.quantity},${vs.index})"/>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <h6 class="mob-text">$${orderbean.value.quantity * orderbean.value.price}NT</h6>
                    <button onclick="del('${orderbean.value.productId}')"><img src="<c:url value='/img/product/delete.png' />" height="25"/></button>
<%--                     <button  name="newQty" onclick="update(${orderbean.value.productId},${orderbean.value.quantity},${vs.index})">update</button> --%>
                </div>
            </div>
        </div>
    </div>
                    </form>
    </c:forEach>
<!--     <div class="row d-flex justify-content-center border-top"> -->
<!--         <div class="col-5"> -->
<!--             <div class="row d-flex"> -->
<!--                 <div class="book"> <img src="https://i.imgur.com/Oj1iQUX.jpg" class="book-img"> </div> -->
<!--                 <div class="my-auto flex-column d-flex pad-left"> -->
<!--                     <h6 class="mob-text">Homo Deus: A Brief<br>History of Tomorrow</h6> -->
<!--                     <p class="mob-text">Yuval Noah Harari</p> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--         <div class="my-auto col-7"> -->
<!--             <div class="row text-right"> -->
<!--                 <div class="col-4"> -->
<%--                     <p class="mob-text">Paperback ${memberBean.name}</p> --%>
<!--                 </div> -->
<!--                 <div class="col-4"> -->
<!--                     <div class="row d-flex justify-content-end px-3"> -->
<!--                         <p class="mb-0" id="cnt2">1</p> -->
<!--                         <div class="d-flex flex-column plus-minus">  -->
<!--                         <span class="vsm-text plus">+</span>  -->
<!--                         <span class="vsm-text minus">-</span> </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-4"> -->
<!--                     <h6 class="mob-text">$13.50</h6> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
    <div class="row justify-content-center">
        <div class="col-lg-12">
            <div class="card">
                <div class="row">
                    <div class="col-lg-3 radio-group">
                        <div class="row d-flex px-3 radio"> 
                            <p class="my-auto"></p>
                        </div>
                        <div class="row d-flex px-3 radio gray"> 
                            <p class="my-auto"></p>
                        </div>
                        <div class="row d-flex px-3 radio gray mb-3"> 
                            <p class="my-auto"></p>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="row px-2">
                            <div class="form-group col-md-6"> <label class="form-control-label"></label> </div>
                            <div class="form-group col-md-6"> <label class="form-control-label"></label> </div>
                        </div>
                        <div class="row px-2">
                            <div class="form-group col-md-6"> <label class="form-control-label"></label>  </div>
                            <div class="form-group col-md-6"> 共有${ShoppingCart.itemNumber}項商品<label class="form-control-label"></label> </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mt-2">
                        <div class="row d-flex justify-content-between px-4">
                            <p class="mb-1 text-left">總金額</p>
                            <h6 class="mb-1 text-right">$${ShoppingCart.subtotal}</h6>
                        </div>
                        <div class="row d-flex justify-content-between px-4">
                            <p class="mb-1 text-left">運費</p>
                            <h6 class="mb-1 text-right">$60</h6>
                        </div>
                  			 <c:choose>
                            <c:when test="${memberPaid eq '1'}">
                        <div class="row d-flex justify-content-between px-4">
                            <p class="mb-1 text-left">付費會員優惠折購</p>
                            <h6 class="mb-1 text-right">10% off</h6>
                        </div>
                         </c:when>
                            </c:choose>
                        <div class="row d-flex justify-content-between px-4" id="tax">
                            <p class="mb-1 text-left">總金額(含 運費)</p>
                            <c:choose>
                            <c:when test="${memberPaid eq '0'}">
                            <h6 class="mb-1 text-right">$${ShoppingCart.finalSubtotal}</h6>
                            </c:when>
                            <c:when test="${memberPaid eq '1'}">
                            <h6 class="mb-1 text-right">$${ShoppingCart.payFinalSubtotal}</h6>
                            </c:when>
                            </c:choose>
                        </div> 
                      
                        <c:choose>
                            <c:when test="${memberPaid eq '0'}">
                        <button class="btn-block btn-blue" id="checkout0" onclick="location.href='<c:url value='/shoppingcart/check'/>'">
                        <span style="float: left">Checkout</span> 
                        <span style="float: right">$${ShoppingCart.finalSubtotal}</span> 
                           </button>
                         </c:when>
                            <c:when test="${memberPaid eq '1'}">
                        <button class="btn-block btn-blue" id="checkout1" onclick="location.href='<c:url value='/shoppingcart/check'/>'">
                        <span style="float: left">Checkout</span> 
                        <span style="float: right">$${ShoppingCart.payFinalSubtotal}</span></button>
                         </c:when>
                          </c:choose>
                        <button class="btn-block btn-blue" id="checkout1" onclick="location.href='<c:url value='/Product/Index'/>'">繼續購物</button>
                          
                    </div>
                </div>
            </div>
        </div>
    </div> 
</div>
<script type='text/javascript'>

// var producttotal = ${orderbean.value.price}*${orderbean.value.quantity};
// var x = "producttotal" + index;
// document.getElementById(x).innerHTML = producttotal;

$(document).ready(function(){

$('.radio-group .radio').click(function(){
$('.radio').addClass('gray');
$(this).removeClass('gray');
});

$('.plus-minus .plus').click(function(){
var count = $(this).parent().prev().text();
$(this).parent().prev().html(Number(count) + 1);
});

$('.plus-minus .minus').click(function(){
var count = $(this).parent().prev().text();
$(this).parent().prev().html(Number(count) - 1);
});

});

function del(id){
	console.log(id);
	if(confirm("確定刪除此商品?")){
	for(var i=0 ; i<document.forms.length ; i++){	
	document.forms[i].action="<c:url value='/shoppingcart/deleteProduct?id=" + id + "'/>" ;
	document.forms[i].method="post";
	document.forms[i].submit();
	}
	}}
	

function updateup(id, qty, index){
	console.log(id);
	console.log(qty);
	console.log(index);
	
	var x = "newQty" + index;

	var newQty = document.getElementById(x).innerHTML;
	parseInt(newQty);
	newQty ++ ;
	
	if  (newQty == qty ) {
		window.alert ("新、舊數量相同，不必修改");
		return;
	}
	
	for(var i=0 ; i<document.forms.length ; i++){	
		document.forms[i].action="<c:url value='/shoppingcart/updateProduct?id=" + id +"&newQty=" + newQty +"'/>" ;
		document.forms[i].method="post";
		document.forms[i].submit();
	
	}
}

function updatedown(id, qty, index){
	console.log(id);
	console.log(qty);
	console.log(index);
	
	
	
	var x = "newQty" + index;
	
	var newQty = document.getElementById(x).innerHTML;
	parseInt(newQty);
	newQty -- ;
	
	var upstop = 1;
	
	if  (newQty < 0 ) {
		window.alert ('數量不能小於 0');
		newQty = 0;
		document.getElementById(x).innerHTML = '0';
		return;
	} else if  (newQty == 0 ) {
		if(confirm("商品數量不為0，確定刪除此商品?")){
	    del(id);
		}
		document.getElementById(x).innerHTML = qty;
		return;
	} 
	else if  (newQty == qty ) {
		window.alert ("新、舊數量相同，不必修改");
		return;
	}

	for(var i=0 ; i<document.forms.length ; i++){	
		document.forms[i].action="<c:url value='/shoppingcart/updateProduct?id=" + id +"&newQty=" + newQty +"'/>" ;
		document.forms[i].method="post";
		document.forms[i].submit();
		
	}
}
</script>
</body>
</html>