<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<link rel="icon" href="<c:url value='/img/yuruIcon.png' />"
	type="image/x-icon">
<!-- Bootstrap -->
<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
<link href="<c:url value='/ionicons/css/ionicons.min.css' />"
	rel="stylesheet">
<!-- main css -->
<link href="<c:url value='/css/style.css' />" rel="stylesheet">
<!-- modernizr -->
<script src="<c:url value='/js/modernizr.js' />"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://www.google.com/recaptcha/api.js?render=6Lcd2-UZAAAAAPBRk2jcML60BLtdKHFsfG3zVImr"></script>


<title>星亮點</title>
<style>
.foot {
	width: 100%;
	font-size: 18px;
}

.title {
	padding-top: 7px;
	font-size: 28px;
	font-family: Circular;
	font-weight: 400!important;
}
/* 廣告輪播 */
.wrapper {
	position: relative;
	width: 1000px;
	height: 400px;
	overflow: hidden;
	margin: 0 auto;
}

.ADul {
	margin: 0;
	padding: 0;
	position: absolute;
}

.ADli {
	margin: 0;
	padding: 0;
	list-style: none;
}

ul.slides {
	width: 5000px;
	left: 0px;
	transition: all .5s;
}

ul.slides li {
	width: 1000px;
	height: 400px;
	overflow: hidden;
	float: left;
}

ul.slides li img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.dot {
	bottom: 10px;
	width: 100%;
	display: flex;
	justify-content: center;
}

.dot li {
	border: 1px solid #fff;
	border-radius: 50%;
	margin: 0 5px;
	width: 10px;
	height: 10px;
}

.slide_btn {
	display: flex;
	justify-content: center;
	align-items: center;
	top: 0;
	bottom: 0;
	width: 30px;
	color: #fff;
	position: absolute;
	font-size: 24px;
}

#prevSlide {
	left: 0;
}

#nextSlide {
	right: 0;
}

.slide_btn i {
	color: rgba(255, 255, 255, .6);
	transition: .5s;
}

.slide_btn:hover i {
	color: rgba(255, 255, 255, 1);
}

/* 橫幅button */

.cal-container {
    margin-right: auto;
    margin-left: auto;
    padding-left: 10px;
    padding-right: 10px;
}

.cal-app_list {
    margin: 0 auto;
    background: #dbcf83;
    min-height: 200px;
}

.cal-app_list .cal-app_item a p {
    margin: 0;
    color: #5d5030e0;
    letter-spacing: 0;
    text-align: center;
    font-size: 14px;
}

.cal-app_list .cal-app_item a p>span {
    display: inline-block;
    vertical-align: middle;
}

.cal-app_list .cal-app_item img {
    display: inline-block;
    vertical-align: middle;
    margin-bottom: 34px;
}

.cal-app_list .cal-app_item.cal-xs-5 {
    width: 20%;
}

.cal-app_list .cal-app_item {
    float: left;
    text-align: center;
    padding-top: 2%;
    position: relative;
    min-height: 1px;
    padding-left: 15px;
    padding-right: 15px;
}

.uili {
    list-style: outside none;
    padding: 0;
    margin: 0;
}

@media (min-width: 1200px)
.cal-container {
    width: 1200px;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/pages/include/top.jsp" />
	<br><br><br><br><br><br>

	<div class="wrapper">
		<ul class="slides ADul">
			<li class="ADli"><img src="<c:url value='/img/camp/xldkayu186/xldkayu186_1.png' />"
				alt=""></li>
			<li class="ADli"><img src="<c:url value='/img/camp/xldkayu186/xldkayu186_2.png' />"
				alt=""></li>
			<li class="ADli"><img src="<c:url value='/img/camp/xldkayu186/xldkayu186_3.png' />"
				alt=""></li>
			<li class="ADli"><img src="<c:url value='/img/camp/xldkayu186/xldkayu186_4.png' />"
				alt=""></li>
			<li class="ADli"><img src="<c:url value='/img/camp/xldkayu186/xldkayu186_5.png' />"
				alt=""></li>
		</ul>
		<ul class="dot ADul">
			<li class="ADli" id="1"></li>
			<li class="ADli" id="2"></li>
			<li class="ADli" id="3"></li>
			<li class="ADli" id="4"></li>
			<li class="ADli" id="5"></li>
		</ul>
		<div id="prevSlide" class="slide_btn">
			<i class="fa fa-caret-left"></i>
		</div>
		<div id="nextSlide" class="slide_btn">
			<i class="fa fa-caret-right"></i>
		</div>
	</div>
	
	<br>
	<section class="cal-app_list">
	<div style="text-align: center;"><p class="title">星亮點 Kayu  露營區</p></div>
		<div class="cal-container">
			<ul class="clearfix uili">
				<li class="cal-xs-5 cal-app_item uili">
					<a data-target="#introduceModal" data-toggle="modal" href="Introduce"> 
						<img src="<c:url value='/img/camp/campImg.png' />" width="40px">
						<p class="cal-app_name">
							<span>營地介紹</span>
						</p>
					</a>
				</li>
				<li class="cal-xs-5 cal-app_item uili">
					<a data-target="#precautionsModal" data-toggle="modal" href="Precautions"> 
						<img src="<c:url value='/img/camp/infoImg.png' />" width="40px">
						<p class="cal-app_name">
							<span>營地須知</span>
						</p>
					</a>
				</li>
				
				<li class="cal-xs-5 cal-app_item uili">
					<a data-target="#weatherModal" data-toggle="modal" href="Weather">
						<img src="<c:url value='/img/camp/weatherImg.png' />" width="37px">
						<p class="cal-app_name">
							<span>氣象資訊</span>
						</p>
					</a>
				</li>
				<li class="cal-xs-5 cal-app_item uili">
					<a href="https://www.facebook.com/kayucampingsite/"> 
						<img src="<c:url value='/img/camp/faceImg.png' />" width="40px">
						<p class="cal-app_name">
							<span>FaceBook</span>
						</p>
					</a>
				</li>
				<li class="cal-xs-5 cal-app_item uili">
					<a data-target="#mapModal" data-toggle="modal" href="GoogleMap"> 
						<img src="<c:url value='/img/camp/mapImg.png' />" width="40px">
						<p class="cal-app_name">
							<span>交通資訊</span>
						</p>
					</a>
				</li>
			</ul>
		</div>
	</section>



	<div align="center">
		<img height="600px" width="1000px" src="<c:url value='/img/camp/xldkayu186/xldkayu186_map.png' />" alt="">
	</div>

	<!-- Modal div -->
	<div class="modal fade" id="weatherModal" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header"></div>
				<div class="modal-body">
					<iframe src="https://www.cwb.gov.tw/V8/C/W/Town/Town.html?TID=1000211" 
					width="100%" height="500px" frameborder="0" style="border:0;" aria-hidden="false" tabindex="0"></iframe>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="mapModal" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header"></div>
				<div class="modal-body">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3625.409477814!2d121.59865431499922!3d24.678446784140153!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x34680af33f1303d1%3A0x1be541544cc3afd0!2z5pif5Lqu6bueS2F5demcsueHn-WNgA!5e0!3m2!1szh-TW!2stw!4v1606023427757!5m2!1szh-TW!2stw" 
					width="100%" height="500px" frameborder="0" style="border:0;" aria-hidden="false" tabindex="0"></iframe>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="bookModal" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">


			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header"></div>
				<div class="modal-body">
					<iframe src="https://yurucamp.youcanbook.me/" width="100%"
						height="550" frameborder="0"></iframe>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="introduceModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLongTitle">關於 星亮點 Kayu</h3>
				</div>
				<div class="modal-body">
Kayu為泰雅語，為水甕/酒甕之意，後引申為聚寶盆。Kayu台語諧音亦為加油，也是希望各露友能夠來此沉澱心情，
分享營區內美好的一切 加滿油充完電後進而再次出發。露營區坐落於宜蘭縣大同鄉崙埤村雪山山脈支脈上，極佳視野，
可見中央山脈開端與360度雪山山脈山巒，亦可遙望太平洋龜山島，宜蘭縣內鄉村街景，東方日出與晨曦 星空夜景一覽無遺。<br><br>

【營區特點】<br>
營區白天雲霧繚繞 百萬夜景與百萬日出就在帳前
寬廣的180度大視野 搭配新設的觀景台可讓營友們賞日出、夕陽、夜景、山景
營區旁的天然樹林步道與新鋪設的水泥步道 可供客人健行及認識民族植物
提供小朋友最愛的盪鞦韆、跳跳床、羽毛球、棒球、籃球與其它球類器材
每月提供各樣主題式的 (以小朋友為主) DIY 手工課程
每到了夏季4月底至6月初 營區內與原始步道區內 有大人小孩都愛的螢火蟲可賞。<br><br>

【媒體推薦】<br>
本營區經各媒體推薦 2018元月開營至今 已獲得推薦項目如下:<br>
★宜蘭千元以下優質營地<br>
★全台百萬夜景優營地<br>
★全台螢火蟲優質營地<br>
★觀夜景優質營地<br>
★全台高CP值優質營地<br><br>

【營業時間】<br>
進場時間：當日正午12：00以後 / 退場時間：次日上午12：00以前<br>
★ 預訂(星期五)二天一夜露營，請於星期六上午11:00前離場，以提供星期六訂位者使用，造成不便敬請見諒。<br>
★ 連續假日營地紮營時間為下午2點至隔日中午12點，以供下位紮營者使用。<br>
★ 週五(或前一晚) 提前進場 (限隔日續住者) 17:00~22:00 可入營，依營位型態半價收費(現場收費)，17:00前到場，以整日收費計算，請於23:00前搭營完成，避免打擾已就寢露友。請於露營日2天前電話聯絡營主0900-483829確認是否有營位。  
★★星期六晚上不提供夜衝服務★★<br>
★★連續假期第二天以後晚上不提供夜衝服務★★<br><br>

【營地遊樂器材】<br>
★大小游泳池 (山泉水含過濾循環器, 大小泳池以身高100cm區分)<br>
★戲沙區 (由宮廷帳覆蓋免小孩曝曬於日光下)<br>
★盪鞦韆 x 2 座<br>
★各式簡易球類 (籃球 羽毛球 棒球 足球)及跳跳床<br><br>

【營地設備】<br>
★ 廁所與澡間分離 (挑高設計 通風良好 無臭味)<br>
★ 24 小時熱水 (另設置加壓馬達 供水量穩定)<br>
★ 衣物脫水機<br>
★ 吹風機<br>
★ 冰箱<br>
★ 冷/溫/熱 三用飲水機<br>
★ 營位內每電表箱共四座插頭 30A x 2<br><br>

【營地設備】<br>
★ 提供電源<br>
★ 夜間照明<br>
★ 導覽解說<br>
★ 寵物同行<br>
★ 3G/4G訊號<br>
★ 夜景<br>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">關閉</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="precautionsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLongTitle">營地注意事項</h3>
				</div>
				<div class="modal-body">
【營地收費】<br>
收費項目：包含營地停車位、炊事帳位置、清潔費、水電、衛浴及服務費。<br>
收費標準：每一個露營單位【以4人/ 1車 / 1帳篷 / 1炊事帳】為限。<br>
★營區帳位為一般帳5 X 8米、雨棚5 X 7米，請依您的帳篷大小訂位，謝謝配合。 （超過一人加200元，國小以下不加收。訪客ㄧ人收100元。多ㄧ車收100元。）<br>
★ 營帳為神殿、怪獸帳、變形金剛、超過5 X 8大天幕者煩請訂2個營位。<br>
★ 睡車上者視同收一帳1000元/ 天計費。<br><br>

【露營日當天訂位】<br>
線上查詢當天是否有空位，如有空位請電話聯絡營地管理員0900-483829當天進場露營 (現場收費)。<br>
如遇颱風、地震等天災、交通因中斷，經政府或旅客所在地政府發佈停止上班上課，皆可延期或100%退費(如選擇退費訂位者需負擔退款手續費每帳50元/天，退款手續費將從退款金額中扣除)。<br><br>

【露營約定】<br>
★勿隨意升火，以維護安全。<br>
★每區皆設有停車場，一帳配置一個車位，請配合營區停放車輛。<br>
★營區內孩童玩耍皆需家長自行全程陪同。<br>
★營地看植栽維護不易，請珍惜花草樹木。<br>
★為維護園區安全，進出營區請減速慢行。<br>
★為響應環保及不浪費資源，營區內將不提供個人盥洗用品等備品。<br>
★營區提供完善衛浴設備，沐浴間24小時提供免費熱水，請珍惜使用。<br>
★晚上10:00~早上08:00為管制時段，請勿大聲喧嘩，以免影響其他露友安寧。<br>
★垃圾請放入垃圾袋內並確實分類，離開前請放置於回收場垃圾桶。<br>
★化妝室內之馬桶及小便池請勿丟入雜物，以確保暢通。<br>
★營區內的電源插座僅提供小電補光用，禁止使用高功率電器產品，如電磁爐、暖爐、電鍋、烤箱、冷氣等，如未依規定而使線路燒毀，請照價賠償。<br>
★露營區內嚴禁營火﹑點火把﹑放爆竹。<br>
★營地內嚴禁使用卡拉OK及施放任何型式種類的鞭炮煙火。<br>
★營區屬開放空間，個人安全/用品/財務請自行負責。<br>
★如攜帶寵(動)物入營，請將寵(動)物繫上繩圈或放進籠裡，勿讓寵(動)物在營地內自由活動，避免叫聲擾人，並請自行清理排泄物。請勿攜帶有列管、危險性、攻擊性、不受控制的寵(動)物，為維護露友安全，營主保留現場拒絕進入營區之權利。如有傷害他人或損壞他人裝備，請自行負責，與本營區無關。<br>
★營區內禁止賭博、吸食毒品及聚眾滋事等一切違法行為，經管理員勸導仍未改善者，將請您主動離開，露營費用沒收不予退還。<br>
★露營野炊，請特別留意食物衛生與保存，若食用自備餐飲而身體不適，請自行負責。<br>
★戶外蚊蟲多，請做好防蚊準備，並穿著長袖衣物及長褲，避免蚊蟲叮咬。<br>
★露宿大自然，請留意野生動物，夜間請避開黑暗處，也不要餵食。<br>
★如您是下雨天不露營者，建議不要提前預訂營位，可於露營日當天確定天氣狀況，適合您露營再電話聯繫營區管理員訂位，以免造成營區與露營者之間的困擾。<br>
★以上規範為維護露營者之權益，請您配合，違反屢勸不聽者取消露營資格。<br>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">我瞭解了</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal div -->

	<footer style="background: #dbcf83">
		<!-- Trigger the modal with a button -->
		<a href="BookCamp" data-toggle="modal" data-target="#bookModal">
			<span class="foot">預約營地</span>
		</a>
	</footer>

	<!-- jQuery -->
	<script src="<c:url value='/js/jquery-2.1.1.js' />"></script>
	<!--  plugins -->
	<script src="<c:url value='/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/js/menu.js' />"></script>
	<script src="<c:url value='/js/animated-headline.js' />"></script>
	<script src="<c:url value='/js/isotope.pkgd.min.js' />"></script>

	<!--  custom script -->
	<script src="<c:url value='/js/custom.js' />"></script>

	<script>
		grecaptcha.ready(function() {
			grecaptcha.execute('6Lcd2-UZAAAAAPBRk2jcML60BLtdKHFsfG3zVImr',{
				action : "submit"
			}).then(function(token) {
				$.ajax({
					type : 'POST',
					url : "<c:url value='/Ajax/CampSite/recaptchaV3' />",
					data : {
						token : token
					},success : function(res) {
						console.log('Return => ',res);
					}
				});
			});
		});
	
		//輪播
		let slideNum = 0;
		let slideCount = $(".slides li").length; //5
		let lastIndex = slideCount - 1;
		$(".dot li").eq(0).css("background-color", "white");
		$(".dot li").mouseenter(function() {
			slideNum = $(this).index();
			// 	    console.log(slideNum);
			show();
		});

		function show() {
			$(".dot li").eq(slideNum).css("background-color", "#fff")
					.siblings().css("background-color", "transparent");
			let move = 0 - 1000 * slideNum;
			$("ul.slides").css("left", move);
		}

		$("#prevSlide").click(function() {
			slideNum--;
			if (slideNum < 0)
				slideNum = lastIndex;
			show();
		})

		$("#nextSlide").click(function() {
			slideNum++;
			if (slideNum > lastIndex)
				slideNum = 0;
			show();
		})

		let timer = setInterval(advertising, 3000);

		$(".wrapper").mouseenter(function() {
			// 	    console.log("in");
			clearInterval(timer);
		})

		$(".wrapper").mouseleave(function() {
			// 	    console.log("out");
			timer = setInterval(advertising, 3000);
		})

		function advertising() {
			let move = 0 - 1000 * slideNum;
			slideNum++;
			if (slideNum > 4)
				slideNum = 0;
			;
			show();
		}
	</script>

</body>
</html>