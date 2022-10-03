<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="JiSu Kim">
    <title>게시판 페이지</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!--===============================================================================================-->
    <link href="../css/search-bar.css" rel="stylesheet">
    <link href="../css/articles/table-header.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-latest.js"></script>

</head>
<body>
<!-- ======= Header ======= -->
<jsp:include page="../header.jsp" flush="true"/>
<!-- End Header -->

<!--start main-->
<main class="container">

    <div class="row">
        <div class="card card-margin search-form">
            <div class="card-body p-0">
                <form id="search-form">
                    <div class="row">
                        <div class="col-12">
                            <div class="row no-gutters">
                                <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                                    <label for="search-type" hidden>검색 유형</label>
                                    <select class="form-control" id="search-type" name="searchType">
                                        <option>제목</option>
                                        <option>내용</option>
                                        <option>작성일자</option>
                                        <option>삭제된 글</option>
                                    </select>
                                </div>
                                <div class="col-lg-8 col-md-6 col-sm-12 p-0">
                                    <label for="search-value" hidden>검색어</label>
                                    <input type="text" placeholder="검색어..." class="form-control" id="search-value"
                                           name="searchValue">
                                </div>
                                <div class="col-lg-1 col-md-3 col-sm-12 p-0">
                                    <button type="submit" class="btn btn-base">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                             viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                             stroke-linecap="round" stroke-linejoin="round"
                                             class="feather feather-search">
                                            <circle cx="11" cy="11" r="8"></circle>
                                            <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                        </svg>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="row">
        <table class="table" id="article-table">
            <thead>
            <tr>
                <th class="board-id col-2"><a>글번호</a></th>
                <th class="title col-6"><a>제목</a></th>
                <th class="user-id"><a>작성자</a></th>
                <th class="created-at"><a>작성일</a></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="board" items="${boards}">
                <tr>
                    <td class="title"><a>${board.boardId}</a></td>
                    <td class="hashtag">${board.boardTitle}</td>
                    <td class="user-id">${board.boardUserName}</td>
                    <td class="created-at">
                        <time>${board.createAt}</time>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="row">
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
            <a class="btn btn-primary me-md-2" role="button" id="write-article" href="/view/board/new">글쓰기</a>
        </div>
    </div>

    <div class="row">
        <nav id="pagination" ria-label="Page navigation">
            <ul class="pagination justify-content-center">
                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                <c:forEach var="pageNumber" items="${paginationBarNumbers}">
                    <li class="page-item"><a class="page-link" href="/?page=${pageNumber + 1}">${pageNumber + 1}</a></li>
                </c:forEach>

                <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
        </nav>
    </div>
</main>
<!-- End #main -->

<!-- ======= Footer ======= -->
<jsp:include page="../footer.jsp" flush="true"/>
<!-- End Footer -->
</body>
</html>
