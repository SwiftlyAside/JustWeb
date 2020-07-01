<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>filter</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/jquery/style.css">
<script crossorigin="anonymous"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="filter.js"></script>
<body>
<div id="filter">
    <div id="form">
        <form>
            <label>ID</label>
            <input name="id" type="text"><br>
            <label>Name</label>
            <input name="name" type="text"><br>
            <label>Phone</label>
            <input name="phone" type="text"><br>
        </form>
    </div>
    <div id="list">
        <div class="table">
            <% for (int i = 0; i < 30; i++) {%>
            <div class="row">
                <div>NO<%=i + 1%></div>
                <div>Name</div>
                <div>Phone</div>
                <div>Email</div>
                <div>Address</div>
            </div>
            <%}%>
        </div>

    </div>
</div>
</body>
</html>