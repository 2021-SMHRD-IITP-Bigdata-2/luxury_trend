<%@page import="user.UserDAO"%>
<%@page import="user.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% UserDTO user = (UserDTO)session.getAttribute("login");%>
  
 <!-- 상품 분석 -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>
    Luxury Trend Dashboard - made by (주)황
  </title>
  <!-- Favicon -->
  <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="../assets/js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
  <link href="../assets/js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="../assets/css/orange.css" rel="stylesheet" />
</head>
<body class="">
  <nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main">
    <div class="container-fluid">
      <!-- Toggler -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- Brand -->
      <a class="navbar-brand pt-0" href="../index.jsp">
        <img src="../assets/img/brand/logo.png" class="navbar-brand-img" alt="...">
      </a>
      <!-- Collapse -->
      <div class="collapse navbar-collapse" id="sidenav-collapse-main">
        <!-- Collapse header -->
        <div class="navbar-collapse-header d-md-none">
          <div class="row">
            <div class="col-6 collapse-brand">
              <a href="../index.jsp">
                <img src="../assets/img/brand/blue.png">
              </a>
            </div>
            <div class="col-6 collapse-close">
              <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                <span></span>
                <span></span>
              </button>
            </div>
          </div>
        </div>
        <!-- Form -->
        <form class="mt-4 mb-3 d-md-none">
          <div class="input-group input-group-rounded input-group-merge">
            <input type="search" class="form-control form-control-rounded form-control-prepended" placeholder="Search" aria-label="Search">
            <div class="input-group-prepend">
              <div class="input-group-text">
                <span class="fa fa-search"></span>
              </div>
            </div>
          </div>
        </form>
        <!-- Navigation -->
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link " href="../index.jsp">
              <i class="ni ni-tv-2 text-purple"></i>스마트 분석
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link  active" href="../examples/only.jsp">
              <i class="ni ni-chart-pie-35 text-purple"></i> 상품 분석 
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="../examples/site_analysis.jsp">
              <i class="ni ni-diamond text-purple"></i> 사이트 분석
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="../examples/tables.jsp">
              <i class="ni ni-bullet-list-67 text-purple"></i> 게시판
            </a>
          </li>
        </ul>
        <!-- Divider -->
        <hr class="my-3">
        <!-- Heading -->
        <h6 class="navbar-heading text-muted">회원</h6>
        <!-- Navigation -->
        <ul class="navbar-nav mb-md-3">
          <nav>
          <%if(user != null) {%>
          	<li class="nav-item">
	            <a class="nav-link" href="../examples/logout.jsp">
	              <i class="ni ni-key-25 text-dark"></i> 로그아웃
	            </a>
         	</li>
            <li class="nav-item">
	            <a class="nav-link " href="../examples/profile.jsp">
	              <i class="ni ni-single-02 text-purple"></i> 프로필
	            </a>
          	</li>          
          <%}else{ %>
	          <li class="nav-item">
	            <a class="nav-link" href="./examples/login.jsp">
	              <i class="ni ni-key-25 text-info"></i> 로그인
	            </a>
	          </li>   
	          <li class="nav-item">
	            <a class="nav-link" href="./examples/register.jsp">
	              <i class="ni ni-circle-08 text-pink"></i> 회원가입
	            </a>
	          </li>
          <%} %>
          </nav>
        </ul>
      </div>
    </div>
  </nav>
  <div class="main-content">
    <!-- Navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
      <div class="container-fluid">
        <!-- Brand -->
        <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="./only.jsp">상품 분석</a>
        <!-- Form -->
        <form class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
          <div class="form-group mb-0">
            <div class="input-group input-group-alternative">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fas fa-search"></i></span>
              </div>
              <input class="form-control" placeholder="search" type="text">
            </div>
          </div>
        </form>
 		<!-- 유저화면 -->
        <ul class="navbar-nav align-items-center d-none d-md-flex">
        <%if(user != null) {%>
          <li class="nav-item dropdown">
            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <div class="media align-items-center">
                <span class="avatar avatar-sm rounded-circle">
                  <img alt="" src="https://t1.daumcdn.net/cfile/blog/99B7C0385ADDFED01A">
                </span>
                <div class="media-body ml-2 d-none d-lg-block">
                  <span class="mb-0 text-sm  font-weight-bold">Eunbi Hwang</span>
                </div>
              </div>
            </a>
            <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
              <div class=" dropdown-header noti-title">
                <h6 class="text-overflow m-0">일반회원</h6>
              </div>
              <a href="./examples/profile.jsp" class="dropdown-item">
                <i class="ni ni-single-02 text-purple"></i>
                <span>프로필</span>
              </a>
              <div class="dropdown-divider"></div>
              <a href="./examples/logout.jsp" class="dropdown-item">
                <i class="ni ni-key-25 text-dark"></i>
                <span>로그아웃</span>
              </a>
            </div>
          </li>
          <%}else{ %>
          <li class="nav-item dropdown">
            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <div class="media align-items-center">
                <span class="avatar avatar-sm rounded-circle">
                  <img alt="" src="../assets/img/user/비회원.png">
                </span>
                <div class="media-body ml-2 d-none d-lg-block">
                  <span class="mb-0 text-sm  font-weight-bold">로그인을 하세요</span>
                </div>
              </div>
            </a>
            <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
              <div class=" dropdown-header noti-title">
                <h6 class="text-overflow m-0">방문을 환영합니다</h6>
              </div>
              <a href="./examples/login.jsp" class="dropdown-item">
                <i class="ni ni-key-25 text-info"></i>
                <span>로그인</span>
              </a>
              <a href="./examples/register.jsp" class="dropdown-item">
                <i class="ni ni-circle-08 text-pink"></i>
                <span>회원가입</span>
              </a>
            </div>
          </li>
          <%} %>
        </ul>
      </div>
    </nav>
    <!-- End Navbar -->
    <!-- Header -->
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <div class="header-body">
          <!-- Card stats -->
          <div class="row">
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-1">상품 원가</h5>
                      <span class="h2 font-weight-bold mb-0">샤넬백</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                <i class="fas fa-shopping-bag"></i>
                      </div>
                    </div>
                  </div>
                 
                
                  <p class="mt-2 mb-0 text-muted text-sm">
                    <span class="text-success mr-2"> 150만원</span>
                    <span class="text-nowrap">xx백화점 가격 반영</span>
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-1">상품 최저 가격</h5>
                      <span class="h2 font-weight-bold mb-0">120만원</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
                        <i class="fas fa-search"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-2 mb-0 text-muted text-sm">
                    <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 20%</span>
                    <span class="text-nowrap">Since last week</span>
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-1">상품 최고 가격</h5>
                      <span class="h2 font-weight-bold mb-0">170만원</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
                        <i class="fas fa-shopping-cart"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-2 mb-0 text-muted text-sm">
                    <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 4.10%</span>
                    <span class="text-nowrap">Since yesterday</span>
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-1">중고 평균 가격</h5>
                      <span class="h2 font-weight-bold mb-0">1,380,000원</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-info text-white rounded-circle shadow">
                        <i class="fas fa-percent"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-2 mb-0 text-muted text-sm">
                    <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                    <span class="text-nowrap">Since last month</span>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--7">
			<!-- Table -->

			<div class="row">
			
				<div class="col-xl-12 col-lg-6">
					<div class="card shadow">
						<div class="card-header bg-transparent">
							<h3 class="mb-0">상품 비교</h3>
						</div>
						<div class="col-lg-3 col-md-4"></div>
						<!-- ..........neyong -->
						<div class="only_contents">
							<!-- 1 -->
							<!-- <div class="card-body">
								<div class="card" style="width: 18rem;">
									<img class="card-img-top"
										src="https://pds.joins.com/news/component/htmlphoto_mmdata/202011/02/5f669eb0-e8be-44d3-8011-79d5ba8d302e.jpg"
										alt="Card image cap">
									<div class="card-body">
										<p class="card-text">Some quick example text to build on
											the card title and make up the bulk of the card's content.</p>
									</div>
								</div>
							</div> -->
							
							
<div class="container">
  <div class="card-deck">
    <div class="card" *ngFor="let item of cards">
      <div class="embed-responsive embed-responsive-4by3">
        <img src="https://mblogthumb-phinf.pstatic.net/MjAxOTA3MjNfMTE1/MDAxNTYzODIyNzc0NzUz.x-xmcLRUyERmyjTIm-i1rjFZ6dHyB0_1SUlZ4Jp565og.uxSr8LCL99Q2S93z4rSe7Sya_b3Wuoy3NYAYSUhrSwEg.PNG.bbalebang/%EB%8B%B9%EA%B7%BC%EB%A7%88%EC%BC%93.png?type=w800" class="card-img-top embed-responsive-item" alt="tree">
      </div>
      <div class="card-body">
        <h1 class="card-title">샤넬 클래식 백</h1>
        <h2 class="card-subtitle">가격 : 140만원</h2>
        <p class="card-text mt-3">1개월 이내 가격</p>
      </div>
    </div>
  </div>
</div>
				
							<!-- 2 -->
							<!-- <div class="card-body">
								<div class="card" style="width: 18rem;">
									<img class="card-img-top"
										src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTiQdQup_TpK7-gCRhsnI7EPyMObxcK0giEg&usqp=CAU"
										alt="Card image cap">
									<div class="card-body">
										<p class="card-text">Some quick example text to build on
											the card title and make up the bulk of the card's content.</p>
									</div>
								</div>	
							</div> -->
<div class="container">
  <div class="card-deck">
    <div class="card" *ngFor="let item of cards">
      <div class="embed-responsive embed-responsive-4by3">
        <img src="https://api.seumlaw.com/images/seum_2b0c6bd440ca4a23a5ce5830026d67b0.jpg" class="card-img-top embed-responsive-item" alt="tree">
      </div>
      <div class="card-body">
        <h1 class="card-title">샤넬 클래식 백</h1>
        <h2 class="card-subtitle">가격 : 135만원</h2>
        <p class="card-text mt-3">1개월 이내 가격</p>
      </div>
    </div>
  </div>
</div>						
							<!-- 3 -->
<!-- 							<div class="card-body"> 
								<div class="card" style="width: 18rem;">
									<img class="card-img-top"
										src="../assets/img/brand/JG.png"
										alt="Card image cap">
	
									<div class="card-body">
										<p class="card-text">Some quick example text to build on
										the card title and make up the bulk of the card's content.</p>
									</div>
								</div>
							</div> -->
<div class="container">
  <div class="card-deck">
    <div class="card" *ngFor="let item of cards">
      <div class="embed-responsive embed-responsive-4by3">
        <img src="http://www.denews.co.kr/news/photo/202006/14032_15515_3925.jpg" class="card-img-top embed-responsive-item" alt="tree">
      </div>
      <div class="card-body">
        <h1 class="card-title">샤넬 클래식 백</h1>
        <h2 class="card-subtitle">가격 : 145만원</h2>
        <p class="card-text mt-3">1개월 이내 가격</p>
      </div>
    </div>
  </div>
</div>	
							<!-- 4 -->
<!-- 							<div class="card-body"> 
								<div class="card" style="width: 18rem;">
									<img class="card-img-top"
										src="../assets/img/brand/VJ.png"
										alt="Card image cap">
	
									<div class="card-body">
										<p class="card-text">Some quick example text to build on
										the card title and make up the bulk of the card's content.</p>
									</div>
								</div>
							</div> -->
	
						</div>
					</div>
				</div>
			</div>


  <!--   Core   -->
  <script src="../assets/js/plugins/jquery/dist/jquery.min.js"></script>
  <script src="../assets/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <!--   Optional JS   -->
  <script src="../assets/js/plugins/clipboard/dist/clipboard.min.js"></script>
  <!--   Argon JS   -->
  <script src="../assets/js/argon-dashboard.min.js?v=1.1.2"></script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
  <script>
    window.TrackJS &&
      TrackJS.install({
        token: "ee6fab19c5a04ac1a32a645abde4613a",
        application: "argon-dashboard-free"
      });
  </script>
</body>

</html>
