<%@page import="user.UserDAO"%>
<%@page import="user.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 로그인 -->
<% 
	UserDTO user = (UserDTO)session.getAttribute("login"); 
	
	

%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>
Luxury Trend 로그인
</title>
<!-- Favicon -->
<link href="../assets/img/brand/favicon.png" rel="icon" type="image/png">
<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<!-- Icons -->
<link href="../assets/js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
<link href="../assets/js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
<!-- CSS Files -->
<link href="../assets/css/argon-dashboard.css?v=1.1.2" rel="stylesheet" />
</head>

<body class="bg-default">
<div class="main-content">
<!-- Navbar -->
<nav class="navbar navbar-top navbar-horizontal navbar-expand-md navbar-dark">
    <div class="container px-4">
    <a class="navbar-brand" href="../index.jsp">
        <!-- 럭셔리 트렌드 로고 투명 png 필요함
        <img src="../assets/img/brand/white.png" /> -->
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbar-collapse-main">
        <!-- Collapse header -->
        <div class="navbar-collapse-header d-md-none">
        <div class="row">
            <div class="col-6 collapse-brand">
            <a href="../index.jsp">
                <img src="../assets/img/brand/blue.png">
            </a>
            </div>
            <div class="col-6 collapse-close">
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                <span></span>
                <span></span>
            </button>
            </div>
        </div>
        </div>
        <!-- Navbar items -->
        <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a class="nav-link nav-link-icon" href="../index.jsp">
            <span class="nav-link-inner--text">분석 사이트</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link-icon" href="../examples/register.jsp">
            <span class="nav-link-inner--text">회원가입</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link-icon" href="../examples/login.jsp">
            <span class="nav-link-inner--text">로그인</span>
            </a>
        </li>
        </ul>
    </div>
    </div>
</nav>
<!-- Header -->
<div class="header bg-gradient-primary py-7 py-lg-9">
    <div class="container">
    <div class="header-body text-center mb-1">
        <div class="row justify-content-center">
        <div class="col-lg-5 col-md-6">
            <!-- 로그인 내용 입력하기 -->
            <!--<p class="text-lead text-light"></p>-->
        </div>
        </div>
    </div>
    </div>
    <div class="separator separator-bottom separator-skew zindex-100">
    <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
        <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
    </svg>
    </div>
</div>
<!-- Page content -->
<div class="container mt--10 pb-5">
    <!-- Table -->
    <div class="row justify-content-center">
    <div class="col-lg-6 col-md-8">
        
        <h1 class="text-white text-center">로그인</h1>
        <div class="card bg-secondary shadow border-0">
        <div class="card-header bg-transparent pb-5">
            <div class="card-body px-lg-5 py-lg-5">
            <div class="text-center text-muted mb-4">
                <small></small>
            </div>
            <!-- 로그인 폼-->
            <form action="/LuxuryPratice2/LoginCon" method="post" role="form">
            <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
            </div>
            <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                </div>
                <input class="form-control" placeholder="이메일" name="email" type="email">
                </div>
            </div>
            <div class="form-group">
                <div class="input-group input-group-alternative">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                </div>
                <input class="form-control" placeholder="패스워드" name="pw" type="password">
                </div>
            </div>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary mt-1">로그인</button>
            </div>
            </form>
        </div>
        <!-- 소셜 로그인 -->
        <!--
        <div class="card-body px-lg-5 py-lg-5">
            <div class="text-center text-muted mb-4">
            <small></small>
            </div>
            <div class="text-muted text-center mt-2 mb-4"><small>Sign up with</small></div>
            <div class="text-center">
            <a href="#" class="btn btn-neutral btn-icon mr-4">
                <span class="btn-inner--icon"><img src="../assets/img/icons/common/github.svg"></span>
                <span class="btn-inner--text">Github</span>
            </a>
            <a href="#" class="btn btn-neutral btn-icon">
                <span class="btn-inner--icon"><img src="../assets/img/icons/common/naver.png"></span>
                <span class="btn-inner--text">NAVER</span>
            </a>
            <a href="#" class="btn btn-neutral btn-icon">
                <span class="btn-inner--icon"><img src="../assets/img/icons/common/google.svg"></span>
                <span class="btn-inner--text">Google</span>
            </a>
            </div>
        </div>
        -->
        </div>
    </div>
    </div>
</div>
</div>
<!-- Footer -->
<footer class="py-5">
<div class="container">
    <div class="row align-items-center justify-content-xl-between">
    <div class="col-xl-12">
        <div class="copyright text-center text-xl-center text-muted">
        @copyright
        <!-- &copy; 2021 -->
        <a class="font-weight-bold ml-3 text-orange" target="_blank">(주)황</a>
        </div>
    </div>
    <!--
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
    --
    </div>
</div>
</footer>
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
