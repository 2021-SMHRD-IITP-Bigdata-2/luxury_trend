<%@page import="user.UserDAO"%>
<%@page import="user.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% UserDTO user = (UserDTO)session.getAttribute("login");%>
    
<!-- 게시판 -->
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
              <a href="../index.html">
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
            <a class="nav-link" href="../examples/only.jsp">
              <i class="ni ni-chart-pie-35 text-purple"></i> 상품 분석 
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="../examples/site_analysis.jsp">
              <i class="ni ni-diamond text-purple"></i> 사이트 분석
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="../examples/tables.jsp">
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
	              <i class="ni ni-circle-08 text-purple"></i> 회원가입
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
        <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="../index.jsp">게시판</a>
        <!-- Form -->
        <form class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
          <div class="form-group mb-0">
            <div class="input-group input-group-alternative">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fas fa-search"></i></span>
              </div>
              <input class="form-control" placeholder="Search" type="text">
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
                  <span class="mb-0 text-sm  font-weight-bold">신비</span>
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
              <!-- <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Traffic</h5>
                      <span class="h2 font-weight-bold mb-0">350,897</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                        <i class="fas fa-chart-bar"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>
                    <span class="text-nowrap">Since last month</span>
                  </p>
                </div>
              </div> -->
            </div>
            <div class="col-xl-3 col-lg-6">
              <!-- <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">New users</h5>
                      <span class="h2 font-weight-bold mb-0">2,356</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
                        <i class="fas fa-chart-pie"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 3.48%</span>
                    <span class="text-nowrap">Since last week</span>
                  </p>
                </div>
              </div> -->
            </div>
            <div class="col-xl-3 col-lg-6">
              <!-- <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Sales</h5>
                      <span class="h2 font-weight-bold mb-0">924</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
                        <i class="fas fa-users"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-warning mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
                    <span class="text-nowrap">Since yesterday</span>
                  </p>
                </div>
              </div> -->
            </div>
            <div class="col-xl-3 col-lg-6">
              <!-- <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Performance</h5>
                      <span class="h2 font-weight-bold mb-0">49,65%</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-info text-white rounded-circle shadow">
                        <i class="fas fa-percent"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                    <span class="text-nowrap">Since last month</span>
                  </p>
                </div>
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid mt--7">
      <!-- Table -->
      <div class="r">
        <div class="col">
          <div class="card shadow">
            <div class="card-header border-0">
              <h3 class="mb-0">게시판</h3>
            </div>
            <div class="table-responsive">
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">게시글</th>
                    <th scope="col">금액</th>
                    <th scope="col">거래상황</th>
                    <th scope="col">작성자</th>
                    <th scope="col">컨디션</th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                <!-- 첫번째 게시글 -->
                  <tr>
                    <th scope="row">
                      <div class="media align-items-center">
                        <a href="#" class="avatar rounded-circle mr-3">
                          <img class="tables_img" alt="#" src="../assets/img/tables/tables_1.jpg">
                        </a>
                        <a href="#">
	                        <div class="media-body">
	                          <span class="mb-0 text-sm">샤넬 클래식가방 팝니다</span>
	                        </div>
	                     </a>
                      </div>
                    </th>
                    <td> 1,500,000 </td>
                    <td>
                      <span class="badge badge-dot mr-4">
                        <i class="bg-warning"></i> 예악
                      </span>
                    </td>
                    <td>
                      <div class="avatar-group">
                        <a href="#" class="avatar avatar-sm" data-toggle="tooltip" data-original-title="회원3">
                          <img alt="Image placeholder" src="../assets/img/theme/team-1-800x800.jpg" class="rounded-circle">
                        </a>
                      </div>
                    </td>
                    <td>
                      <div class="d-flex align-items-center">
                        <span class="mr-2">중하</span>
                        <div>
                          <div class="progress">
                            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 30%;"></div>
                          </div>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <!-- 두번째 게시글 -->
                  <tr>
                    <th scope="row">
                      <div class="media align-items-center">
                        <a href="#" class="avatar rounded-circle mr-3">
                          <img class="tables_img" alt="Image placeholder" src="../assets/img/tables/tables_2.jpg">
                        </a>
                        <a href="#">
	                        <div class="media-body">
	                          <span class="mb-0 text-sm">한번 쓴 미니백 팔아요</span>
	                        </div>
                        </a>
                      </div>
                    </th>
                    <td> 2,000,000</td>
                    <td>
                      <span class="badge badge-dot">
                        <i class="bg-success"></i> 거래완료
                      </span>
                    </td>
                    <td>
                      <div class="avatar-group">
                        <a href="#" class="avatar avatar-sm" data-toggle="tooltip" data-original-title="회원1">
                          <img alt="Image placeholder" src="../assets/img/theme/team-2-800x800.jpg" class="rounded-circle">
                        </a>
                      </div>
                    </td>
                    <td>
                      <div class="d-flex align-items-center">
                        <span class="mr-2">최상</span>
                        <div>
                          <div class="progress">
                            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                          </div>
                        </div>
                      </div>
                    </td>
                    <!--
                    <td class="text-right">
                      <div class="dropdown">
                        <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-ellipsis-v"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                          <a class="dropdown-item" href="#">Action</a>
                          <a class="dropdown-item" href="#">Another action</a>
                          <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                      </div>
                    </td>
                    -->
                  </tr>
                  <!-- 세번째 게시글 -->
                  <tr>
                    <th scope="row">
                      <div class="media align-items-center">
                        <a href="#" class="avatar rounded-circle mr-3">
                          <img class="tables_img" alt="Image placeholder" src="../assets/img/tables/tables_3.jpg">
                        </a>
                        <a href="#">
                        <div class="media-body">
                          <span class="mb-0 text-sm">소프트캐비어 빈티지 팝니다</span>
                        </div>
                        </a>
                      </div>
                    </th>
                    <td> 3,150,000 </td>
                    <td>
                      <span class="badge badge-dot mr-4">
                        <i class="bg-danger"></i> 예약
                      </span>
                    </td>
                    <td>
                      <div class="avatar-group">
                        <a href="#" class="avatar avatar-sm" data-toggle="tooltip" data-original-title="회원2">
                          <img alt="Image placeholder" src="../assets/img/theme/team-3-800x800.jpg" class="rounded-circle">
                        </a>
                      </div>
                    </td>
                    <td>
                      <div class="d-flex align-items-center">
                        <span class="mr-2">중상</span>
                        <div>
                          <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100" style="width: 72%;"></div>
                          </div>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <!-- 세번째 게시글 -->
                  <tr>
                    <th scope="row">
                      <div class="media align-items-center">
                        <a href="#" class="avatar rounded-circle mr-3">
                          <img class="tables_img" alt="Image placeholder" src="../assets/img/tables/tables_4.jpg">
                        </a>
                        <a href="#">
	                        <div class="media-body">
	                          <span class="mb-0 text-sm">에르메스 가든파티 36 거의 새상품 판매</span>
	                        </div>
                        </a>
                      </div>
                    </th>
                    <td> 4,400,000 </td>
                    <td>
                      <span class="badge badge-dot">
                        <i class="bg-info"></i> 거래중
                      </span>
                    </td>
                    <td>
                      <div class="avatar-group">
                        <a href="#" class="avatar avatar-sm" data-toggle="tooltip" data-original-title="신비">
                          <img alt="Image placeholder" src="https://t1.daumcdn.net/cfile/blog/99B7C0385ADDFED01A" class="rounded-circle">
                        </a>
                      </div>
                    </td>
                    <td>
                      <div class="d-flex align-items-center">
                        <span class="mr-2">상</span>
                        <div>
                          <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%;"></div>
                          </div>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                  <!-- 다섯번째 게시글 -->
                    <th scope="row">
                      <div class="media align-items-center">
                        <a href="#" class="avatar rounded-circle mr-3">
                          <img class="tables_img" alt="Image placeholder" src="../assets/img/tables/tables_5.jpg">
                        </a>
                        <a href="#">
	                        <div class="media-body">
	                          <span class="mb-0 text-sm">미개봉 샤넬 15번대 미니백 판매</span>
	                        </div>
                        </a>
                      </div>
                    </th>
                    <td> 2,200,000 </td>
                    <td>
                      <span class="badge badge-dot mr-4">
                        <i class="bg-success"></i> 거래완료
                      </span>
                    </td>
                    <td>
                      <div class="avatar-group">
                        <a href="#" class="avatar avatar-sm" data-toggle="tooltip" data-original-title="회원4">
                          <img alt="Image placeholder" src="../assets/img/theme/team-4-800x800.jpg" class="rounded-circle">
                        </a>
                      </div>
                    </td>
                    <td>
                      <div class="d-flex align-items-center">
                        <span class="mr-2">최상</span>
                        <div>
                          <div class="progress">
                            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                          </div>
                        </div>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="card-footer py-4">
              <nav aria-label="...">
                <ul class="pagination justify-content-end mb-0">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">
                      <i class="fas fa-angle-left"></i>
                      <span class="sr-only">Previous</span>
                    </a>
                  </li>
                  <li class="page-item active">
                    <a class="page-link" href="#">1</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">
                      <i class="fas fa-angle-right"></i>
                      <span class="sr-only">Next</span>
                    </a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
      <!-- Footer -->
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
  </div>
  <!--   Core   -->
  <script src="../assets/js/plugins/jquery/dist/jquery.min.js"></script>
  <script src="../assets/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <!--   Optional JS   -->
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
