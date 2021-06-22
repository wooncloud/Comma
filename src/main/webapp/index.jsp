<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>

<%@include file="./header.jsp"%>
<div id="promotion">
	<div id="carouselIndicator" class="carousel slide" data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselIndicator" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselIndicator" data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselIndicator" data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselIndicator" data-bs-slide-to="3" aria-label="Slide 4"></button>
			<button type="button" data-bs-target="#carouselIndicator" data-bs-slide-to="4" aria-label="Slide 5"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="./images/carousel/cc01.jpg" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item">
				<img src="./images/carousel/cc02.jpg" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item">
				<img src="./images/carousel/cc03.jpg" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item">
				<img src="./images/carousel/cc04.jpg" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item">
				<img src="./images/carousel/cc05.jpg" class="d-block w-100" alt="">
			</div>
		</div>
		<button class="carousel-control-prev" type="button" data-bs-target="#carouselIndicator" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"	data-bs-target="#carouselIndicator" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> 
			<span class="visually-hidden">Next</span>
		</button>
	</div>
</div>
<div id="menu">
	<div class="container">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="pills-coffee-tab"
					data-bs-toggle="pill" data-bs-target="#pills-coffee" type="button"
					role="tab" aria-controls="pills-coffee" aria-selected="true">COFFEE</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="pills-non-coffee-tab"
					data-bs-toggle="pill" data-bs-target="#pills-non-coffee"
					type="button" role="tab" aria-controls="pills-non-coffee"
					aria-selected="false">NON-COFFEE</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="pills-tea-tab" data-bs-toggle="pill"
					data-bs-target="#pills-tea" type="button" role="tab"
					aria-controls="pills-tea" aria-selected="false">TEA</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="pills-ade-tab" data-bs-toggle="pill"
					data-bs-target="#pills-ade" type="button" role="tab"
					aria-controls="pills-ade" aria-selected="false">ADE</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="pills-smoothie-tab"
					data-bs-toggle="pill" data-bs-target="#pills-smoothie"
					type="button" role="tab" aria-controls="pills-smoothie"
					aria-selected="false">SMOOTHIE</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="pills-shake-tab" data-bs-toggle="pill"
					data-bs-target="#pills-shake" type="button" role="tab"
					aria-controls="pills-shake" aria-selected="false">FRAPPE /
					BUBBLE / SHAKE</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="pills-juice-tab" data-bs-toggle="pill"
					data-bs-target="#pills-juice" type="button" role="tab"
					aria-controls="pills-juice" aria-selected="false">FRUIT
					JUICE</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="pills-bakery-tab" data-bs-toggle="pill"
					data-bs-target="#pills-bakery" type="button" role="tab"
					aria-controls="pills-bakery" aria-selected="false">BAKERY</button>
			</li>
		</ul>
		<div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="pills-coffee" role="tabpanel" aria-labelledby="pills-coffee-tab">
				<div class="menu-head-img img-coffee"></div>
				<div class="menu-contents">
					<div class="row">AJAX로 메뉴 불러와서 할꺼</div>
				</div>
			</div>
			<div class="tab-pane fade" id="pills-non-coffee" role="tabpanel" aria-labelledby="pills-non-coffee-tab">
				<div class="menu-head-img img-non-coffee"></div>
				<div></div>
			</div>
			<div class="tab-pane fade" id="pills-tea" role="tabpanel" aria-labelledby="pills-tea-tab">
				<div class="menu-head-img img-tea"></div>
				<div></div>
			</div>
			<div class="tab-pane fade" id="pills-ade" role="tabpanel" aria-labelledby="pills-ade-tab">
				<div class="menu-head-img img-ade"></div>
				<div></div>
			</div>
			<div class="tab-pane fade" id="pills-smoothie" role="tabpanel" aria-labelledby="pills-smoothie-tab">
				<div class="menu-head-img img-smoothie"></div>
				<div></div>
			</div>
			<div class="tab-pane fade" id="pills-shake" role="tabpanel" aria-labelledby="pills-shake-tab">
				<div class="menu-head-img img-shake"></div>
				<div></div>
			</div>
			<div class="tab-pane fade" id="pills-juice" role="tabpanel" aria-labelledby="pills-juice-tab">
				<div class="menu-head-img img-juice"></div>
				<div></div>
			</div>
			<div class="tab-pane fade" id="pills-bakery" role="tabpanel" aria-labelledby="pills-bakery-tab">
				<div class="menu-head-img img-bakery"></div>
				<div></div>
			</div>
		</div>
	</div>
</div>
<hr>
<div id="content" class="container">
	<div class="row row-cols-1 row-cols-md-3 g-4">
		<div class="col">
			<div class="card h-100">
				<img src="./images/icons/news.png" class="card-img-top" alt="뉴스">
				<div class="card-body">
					<h5 class="card-title">뉴스</h5>
					<p class="card-text">
						콤마 커피의 새로운 소식을 듣고 싶나요?<br> 콤마 소식을 전해 드립니다.
					</p>
				</div>
				<div class="card-footer">
					<small class="text-muted">
						<a href="./CommaCtrl.do?command=news" class="btn btn-primary btn-sm">콤마 뉴스 확인하기</a>
					</small>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100">
				<img src="./images/icons/order.png" class="card-img-top" alt="주문">
				<div class="card-body">
					<h5 class="card-title">모바일 주문</h5>
					<p class="card-text">
						스마트오더로 스마트하게 주문하자!<br> Up스마트오더로 쉽고 빠르게~!
					</p>
				</div>
				<div class="card-footer">
					<small class="text-muted"> <a
						href="https://so.upsolution.co.kr/latteyadr03/1000"
						class="btn btn-primary btn-sm">모바일 주문 하러가기</a>
					</small>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100">
				<img src="./images/icons/call.png" class="card-img-top" alt="전화">
				<div class="card-body">
					<h5 class="card-title">고객 문의</h5>
					<p class="card-text">
						<br> 고객문의 전화번호 : 02-2107-7979
					</p>
				</div>
				<div class="card-footer">
					<small class="text-muted">
						<a href="./CommaCtrl.do?command=customer" class="btn btn-primary btn-sm">고객센터 바로 가기</a>
					</small>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="./footer.jsp"%>
