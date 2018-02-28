<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/layouts/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>猫宁商城</title>
<link rel="stylesheet" href="${ctxsta}/os/css/index.css">
</head>
<body>
	<!-- 轮播top菜单导航引入 -->
	<jsp:include page="/WEB-INF/views/modules/common/site_header.jsp" />
	<!-- 轮播top菜单导航引入 -->

	<!--     轮播begin       -->
	<div class="home-hero-container container-fluid">
		<div class="home-hero">
			<div class="home-hero-slider">
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="box">
							<ul class="ull">
								<li><a href="#"
									> <img
										src="${ctximg }/images/advert/20170224/1471798318820.jpg"
										></a>
								</li>
								<li><a href="#"
									> <img
										src="${ctximg }/images/advert/20170224/1471798364441.jpg"
										></a>
								</li>
								<li><a href="#"
									> <img
										src="${ctximg }/images/advert/20170224/1471798388806.jpg"
										></a>
								</li>
								<li>
									<a href="#">
										<img src="${ctximg }/images/advert/20170224/1471798568000.jpg">
									</a>
								</li>
								<li><a href="#"
									> <img
										src="${ctximg }/images/advert/20170224/1471798587469.jpg"
										></a>
								</li>
								<li><a href="#"
									> <img
										src="${ctximg }/images/advert/20170224/1471798587971.jpg"
										></a>
								</li>
							</ul>
							<ol class="oll">
							</ol>
							<span class="left btnL glyphicon glyphicon-menu-right"></span> <span
								class="right btnL glyphicon glyphicon-menu-left"></span>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="home-star-goods xm-carousel-container" id="J_starProduct">
		
		</div>
	</div>
	<!--     轮播end         -->

	<!--     主产品  begin    -->
	<div class="page-main home-main">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="container-fluid">
						<div id="J_topCategory"
							class="home-recm-box home-brick-box xm-plain-box">
						</div>
						<div id="J_hotCategory"
							class="home-recm-box home-brick-box xm-plain-box">
						</div>
						<div id="J_popularPrudoct"
							class="home-recm-box home-brick-box home-brick-row-1-box xm-plain-box J_itemBox J_recommendBox is-visible">
						</div>
						<div id="J_commentPrudoct"
							class="home-review-box xm-plain-box J_itemBox J_reviewBox is-visible">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--     主产品end       -->
	<myfooter> <script src="${ctxsta}/os/js/index.js"></script>
	</myfooter>
</body>
</html>