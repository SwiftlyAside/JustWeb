<%@ page contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<jsp:useBean id="memberForm" class="LoginBean.MembershipForm"/>
<html>
<head>
    <title>다음 Login</title>
    <style type="text/css">
        div {
            width: 50%;
            text-align: center;
            margin: auto;
        }

        table {
            margin: auto;
        }
    </style>
</head>
<body>
<div>
    <h1>다음 회원가입</h1>
    <hr/>
    <form name="frmMain" action="DaumLoginProc.jsp" method="post">
        <%=
        memberForm.CreateMembershipForm(
                "CARE Lab ID",
                memberForm.NAME +
                        memberForm.EMAIL +
                        memberForm.AUTH
        )
        %>
        <hr/>
        <input type=submit value="회원가입"/>
    </form>
</div>
</body>
</html>