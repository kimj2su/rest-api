<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" >
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<header class="p-3 bg-dark text-white">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a id="home" href="#" class="nav-link px-2 text-secondary">Home</a></li>
                <li><a id="hashtag" href="#" class="nav-link px-2 text-secondary">Hashtags</a></li>
            </ul>

            <div class="text-end">
                <span id="username" class="text-white me-2">username</span>
                <a role="button" id="login" class="btn btn-outline-light me-2">Login</a>
                <a role="button" id="logout" class="btn btn-outline-light me-2">Logout</a>
                <a role="button" id="sign-up" class="btn btn-warning">Sign-up</a>
            </div>
        </div>
    </div>
</header>

</body>
</html>