<%@page import="user.UserDAO"%>
<%@page import="user.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% UserDTO user = (UserDTO)session.getAttribute("login");%>

<!-- 사이트 분석 -->

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
  <link href="../assets/css/site_analysis.css" rel="stylesheet" />
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
      <!-- 메뉴바 -->
      <div class="collapse navbar-collapse" id="sidenav-collapse-main">
        <!-- Collapse header -->
			<div class="navbar-collapse-header d-md-none">
				<div class="row">
					<div class="col-6 collapse-brand">
						<a href="../index.html"> <img
							src="../assets/img/brand/blue.png">
						</a>
					</div>
					<div class="col-6 collapse-close">
						<button type="button" class="navbar-toggler"
							data-toggle="collapse" data-target="#sidenav-collapse-main"
							aria-controls="sidenav-main" aria-expanded="false"
							aria-label="Toggle sidenav">
							<span></span> <span></span>
						</button>
					</div>
				</div>
			</div>
			<!-- Form -->
			<form class="mt-4 mb-3 d-md-none">
				<div class="input-group input-group-rounded input-group-merge">
					<input type="search"
						class="form-control form-control-rounded form-control-prepended"
						placeholder="Search" aria-label="Search">
					<div class="input-group-prepend">
						<div class="input-group-text">
							<span class="fa fa-search"></span>
						</div>
					</div>
				</div>
			</form>
			<!-- 메뉴시작 -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link " href="../index.jsp">
						<i class="ni ni-tv-2 text-purple"></i>스마트 분석
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="../examples/only.jsp"> <i
						class="ni ni-chart-pie-35 text-purple"></i> 상품 분석
				</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="../examples/site_analysis.jsp"> <i
						class="ni ni-diamond text-purple"></i> 사이트 분석
				</a></li>
			</ul>
			<!-- 게시판 문의사항 -->
			<hr class="my-3">
			<h6 class="navbar-heading text-muted">LUXURY</h6>
			<ul class="navbar-nav mb-md-3">
				<% if (user != null) { %>
				<li class="nav-item"><a class="nav-link"
					href="./tables.jsp"> <i
						class="ni ni-bullet-list-67 text-purple"></i> 게시판
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="./question.jsp"> <i
						class="ni ni-bulb-61 text-purple"></i> 문의사항
				</a></li>
				<% } else {	%>
				<li class="nav-item"><a class="nav-link" href="#"
					data-toggle="popover" data-placement="right"
					data-content="로그인 후 사용 가능합니다"> <i
						class="ni ni-bullet-list-67 text-purple"></i> 게시판
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					data-toggle="popover" data-placement="right"
					data-content="로그인 후 사용 가능합니다">
					<i class="ni ni-bulb-61 text-purple"></i> 문의사항
				</a></li>
				<% } %>
			</ul>
			<!-- 로그인 회원가입 -->
			<hr class="my-3">
			<h6 class="navbar-heading text-muted">MEMBER</h6>
			<ul class="navbar-nav mb-md-3">
				<% if (user != null) { %>
				<li class="nav-item"><a class="nav-link" href="./logout.jsp">
					<i class="ni ni-key-25 text-purple"></i> 로그아웃
				</a></li>
				<li class="nav-item"><a class="nav-link" href="./profile.jsp">
					<i class="ni ni-single-02 text-purple"></i> 프로필
				</a></li>
				<% } else {	%>
				<li class="nav-item"><a class="nav-link" href="./login.jsp">
						<i class="ni ni-key-25 text-purple"></i> 로그인
				</a></li>
				<li class="nav-item"><a class="nav-link" href="./register.jsp">
					<i class="ni ni-circle-08 text-purple"></i> 회원가입
				</a></li>
				<% } %>
			</ul>
		</div>
    </div>
  </nav>
  <div class="main-content">
    <!-- Navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
      <div class="container-fluid">
        <!-- Brand -->
        <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="../index.jsp">사이트 분석</a>
        <!-- 유저화면 -->
		<ul class="navbar-nav align-items-center d-none d-md-flex">
			<% if (user != null) { %>
			<li class="nav-item dropdown">
				<a href="#" class="nav-link pr-0" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<div class="media align-items-center">
						<span class="avatar avatar-sm rounded-circle">
							<img alt="" src="https://t1.daumcdn.net/cfile/blog/99B7C0385ADDFED01A">
						</span>
						<div class="media-body ml-2 d-none d-lg-block">
							<span class="mb-0 text-sm  font-weight-bold">황은비</span>
						</div>
					</div>
				</a>
				<div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
					<div class=" dropdown-header noti-title">
						<h6 class="text-overflow m-0">일반회원</h6>
					</div>
					<a href="./profile.jsp" class="dropdown-item"> <i
						class="ni ni-single-02 text-purple"></i> <span>프로필</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="./logout.jsp" class="dropdown-item"> <i
						class="ni ni-key-25 text-purple"></i> <span>로그아웃</span>
					</a>
				</div></li>
			<% } else { %>
			<li class="nav-item dropdown">
				<a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<div class="media align-items-center">
						<span class="avatar avatar-sm rounded-circle">
							<img alt="" src="../assets/img/user/비회원.png">
						</span>
						<div class="media-body ml-2 d-none d-lg-block">
							<span class="mb-0 text-sm  font-weight-bold">비회원</span>
						</div>
					</div>
				</a>
				<div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
					<div class=" dropdown-header noti-title">
						<h6 class="text-overflow m-0">방문을 환영합니다</h6>
					</div>
					<a href="./login.jsp" class="dropdown-item"> <i
						class="ni ni-key-25 text-info text-purple"></i> <span>로그인</span>
					</a> <a href="./register.jsp" class="dropdown-item"> <i
						class="ni ni-circle-08 text-purple"></i> <span>회원가입</span>
					</a>
				</div></li>
			<% } %>
		</ul>
      </div>
    </nav>
    <!-- End Navbar -->
    <!-- body -->
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <div class="header-body">
          <!-- Card stats -->
          <!---->
          <div class="row">
            <div class="col-xl-4 col-lg-6"></div>
            <div class="col-xl-4 col-lg-6"></div>
            <div class="col-xl-4 col-lg-6"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid mt--6 "> 
      <div class="row ">
        <div class="col-xl-4">
          <div class="card shadow">
            <div class="card-header border-0">
              <div class="row align-items-center">
                <div class="col">
                  <h1 class="mb-0 text-center">비교 브랜드 순위</h1>
                </div>
              </div>
            </div>
            <div class="table-responsive">
              <!-- Projects table -->
              <table class="table align-items-center table-flush text-center">
                <thead class="thead-light">
                  <tr class="text-center">
                    <th scope="col" style="font-size:15px;">순위</th>
                    <th scope="col" style="font-size:15px;">브랜드명</th>
                    <th scope="col" style="font-size:15px;">순위변동</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td> 1 </td>
                    <td> 샤넬 </td>
                    <td>
                      <i class="fas mr-3"></i> -
                    </td>
                  </tr>
                  <tr>
                    <td> 2 </td>
                    <td> 프라다 </td>
                    <td>
                      <i class="fas fa-arrow-up text-success mr-3"></i> 2
                    </td>
                  </tr>
                  <tr>
                    <td> 3 </td>
                    <td> 구찌 </td>
                    </td>
                    <td>
                      <i class="fas fa-arrow-down text-warning mr-3"></i> 1
                    </td>
                  </tr>
                  <tr>
                    <td> 4 </td>
                    <td> 루이비통 </td>
                    <td>
                      <i class="fas  fa-arrow-down text-success text-warning mr-3"></i> 1
                    </td>
                  </tr>
                  <tr>
                    <td> 5 </td>
                    <td> 에르메스 </td>
                    <td>
                      <i class="fas text-danger mr-3"></i> -
                    </td>
                  </tr>
                  <tr>
                    <td> 6 </td>
                    <td> - </td>
                    <td>
                      <i class="fas text-danger mr-3"></i> -
                    </td>
                  </tr>
                  <tr>
                    <td> 7 </td>
                    <td> - </td>
                    <td>
                      <i class="fas text-danger mr-3"></i> -
                    </td>
                  </tr>
                  <tr>
                    <td> 8 </td>
                    <td> - </td>
                    <td>
                      <i class="fas text-danger mr-3"></i> -
                    </td>
                  </tr>
                  <tr>
                    <td> 9 </td>
                    <td> - </td>
                    <td>
                      <i class="fas mr-3"></i> -
                    </td>
                  </tr>
                  <tr>
                    <td> 10 </td>
                    <td> - </td>
                    <td>
                      <i class="fas mr-3"></i> -
                    </td>
                  </tr>
                  <tr>
                    <td> 11 </td>
                    <td> - </td>
                    <td>
                      <i class="fas text-danger mr-3"></i> -
                    </td>
                  </tr>
                  <tr>
                    <td> 12 </td>
                    <td> - </td>
                    <td>
                      <i class="fas text-danger mr-3"></i> -
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      <!-- 두번째 차트 -->
      <div class="col-xl-4">
        <div class="card shadow">
          <div class="card-header border-0">
            <div class="row align-items-center">
              <div class="col">
                <h1 class="mb-0 text-center">전체 상품 순위</h1>
              </div>
            </div>
          </div>
          <div class="table-responsive">
            <table class="table align-items-center table-flush text-center">
              <thead class="thead-light">
                <tr class="text-center">
                  <th scope="col" style="font-size:15px;">순위</th>
                  <th scope="col" style="font-size:15px;">상품명</th>
                  <th scope="col" style="font-size:15px;">순위변동</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td> 1 </td>
                  <td> 샤넬 클래식 </td>
                  <td>
                    <i class="fas fa-arrow-up text-success mr-3"></i> 2
                  </td>
                </tr>
                <tr>
                  <td> 2 </td>
                  <td> 구찌 디오니서스 </td>
                  <td>
                    <i class="fas fa-arrow-down text-warning mr-3"></i> 1
                  </td>
                </tr>
                <tr>
                  <td> 3 </td>
                  <td> 프라다 두블레 </td>
                  </td>
                  <td>
                    <i class="fas fa-arrow-down text-warning mr-3"></i> 1
                  </td>
                </tr>
                <tr>
                  <td> 4 </td>
                  <td> 샤넬 2.55 </td>
                  <td>
                    <i class="fas text-success mr-3"></i> -
                  </td>
                </tr>
                <tr>
                  <td> 5 </td>
                  <td> 구찌 gg마몽 </td>
                  <td>
                    <i class="fas text-danger mr-3"></i> -
                  </td>
                </tr>
                <tr>
                  <td> 6 </td>
                  <td> 프라다 클레오백 </td>
                  <td>
                    <i class="fas text-danger mr-3"></i> -
                  </td>
                </tr>
                <tr>
                  <td> 7 </td>
                  <td> 구찌 홀리빗 1955 </td>
                  <td>
                    <i class="fas text-danger mr-3"></i> -
                  </td>
                </tr>
                <tr>
                  <td> 8 </td>
                  <td> 구찌 재키 1961 </td>
                  <td>
                    <i class="fas text-danger mr-3"></i> -
                  </td>
                </tr>
                <tr>
                  <td> 9 </td>
                  <td> 보이 샤넬 </td>
                  <td>
                    <i class="fas fa-arrow-down text-danger mr-3"></i> 1
                  </td>
                </tr>
                <tr>
                  <td> 10 </td>
                  <td> 샤넬 가브리엘 </td>
                  <td>
                    <i class="fas fa-arrow-up text-danger mr-3"></i> 1
                  </td>
                </tr>
                <tr>
                  <td> 11 </td>
                  <td> 샤넬 램스킨 아코디언 </td>
                  <td>
                    <i class="fas text-danger mr-3"></i> -
                  </td>
                </tr>
                <tr>
                  <td> 12 </td>
                  <td> 에르메스 가든파티 </td>
                  <td>
                    <i class="fas text-danger mr-3"></i> -
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      

      <!-- 세번째 차트 -->
      <div class="col-xl-4">
        <div class="card shadow">
          <div class="card-header border-0">
            <div class="row align-items-center">
              <div class="col">
                <h1 class="mb-0 text-center">중고 사이트 순위</h1>
              </div>
            </div>
          </div>
          <div class="table-responsive">
            <table class="table align-items-center table-flush text-center">
              <thead class="thead-light">
                <tr class="text-center">
                  <th scope="col" style="font-size:15px;">순위</th>
                  <th scope="col" style="font-size:15px;">사이트명</th>
                  <th scope="col" style="font-size:15px;">순위변동</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td> 1 </td>
                  <td> 중고나라 </td>
                  <td><i class="fas fa-arrow-up text-success mr-3"></i> 1 </td>
                </tr>
                <tr>
                  <td> 2 </td>
                  <td> 번개장터 </td>
                  <td><i class="fas fa-arrow-down text-warning mr-3"></i> 1 </td>
                </tr>
                <tr>
                  <td> 3 </td>
                  <td> 당근마켓 </td>
                  </td>
                  <td><i class="fas text-warning mr-3"></i> - </td>
                </tr>
                <tr>
                  <td> 4 </td>
                  <td> 헬로마켓 </td>
                  <td><i class="fas text-success mr-3"></i> - </td>
                </tr>
                <tr>
                  <td> 5 </td>
                  <td> - </td>
                  <td><i class="fas text-success mr-3"></i>  - </td>
                </tr>
                <tr>
                  <td> 6 </td>
                  <td> - </td>
                  <td><i class="fas text-success mr-3"></i> - </td>
                </tr>
                <tr>
                  <td> 7 </td>
                  <td> - </td>
                  <td><i class="fas text-success mr-3"></i> - </td>
                </tr>
                <tr>
                  <td> 8 </td>
                  <td> - </td>
                  <td><i class="fas text-success mr-3"></i> - </td>
                </tr>
                <tr>
                  <td> 9 </td>
                  <td> - </td>
                  <td><i class="fas text-success mr-3"></i> - </td>
                </tr>
                <tr>
                  <td> 10 </td>
                  <td> - </td>
                  <td><i class="fas text-success mr-3"></i> - </td>
                </tr>
                <tr>
                  <td> 11 </td>
                  <td> - </td>
                  <td><i class="fas text-success mr-3"></i> - </td>
                </tr>
                <tr>
                  <td> 12 </td>
                  <td> - </td>
                  <td><i class="fas text-success mr-3"></i> - </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <!-- 하단 -->
    <footer class="footer">
      <div class="row align-items-center justify-content-xl-between">
        <div class="col-xl-6">
            <div class="copyright text-center text-xl-left text-muted">
              &copy; 2021 <a href="" class="font-weight-bold ml-1 footer-copy" target="_blank">(주)황</a>
            </div>
          </div>
        <div class="col-xl-6">
          <ul class="nav nav-footer justify-content-center justify-content-xl-end">
            <li class="nav-item">
              <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Creative Tim</a>
            </li>
            <li class="nav-item">
              <a href="https://www.creative-tim.com/presentation" class="nav-link" target="_blank">About Us</a>
            </li>
            <li class="nav-item">
              <a href="http://blog.creative-tim.com" class="nav-link" target="_blank">Blog</a>
            </li>
            <li class="nav-item">
              <a href="https://github.com/creativetimofficial/argon-dashboard/blob/master/LICENSE.md" class="nav-link" target="_blank">MIT License</a>
            </li>
          </ul>
        </div>
      </div>
    </footer>
  </div>
  <!--   Core   -->
  <script src="../assets/js/plugins/jquery/dist/jquery.min.js"></script>
  <script src="../assets/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <!--   Optional JS   -->
  <script src="../assets/js/plugins/chart.js/dist/Chart.min.js"></script>
  <script src="../assets/js/plugins/chart.js/dist/Chart.extension.js"></script>
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
