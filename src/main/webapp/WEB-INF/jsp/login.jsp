<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>Login</title>
    <script src="<c:url value='/resources/javascript/javascript.js' />" type="text/javascript"></script>
    <link href="<c:url value='/resources/css/styles.css' />" rel="stylesheet" type="text/css">
</head>

<body>
<form id="loginForm" modelAttribute="login" action="loginProcess" method="post">
    <div class="vid-container">
        <img src="${pageContext.request.contextPath}/resources/images/background.png" alt="" width="100%" height="100%">
        <div class="inner-container-login">
            <div class="box">
                <h1>SmartPay</h1>
                <input type="text" name="phonenumber" placeholder="Phone Number" pattren ="[0-9]{3}-[0-9]{3}-[0-9]{4}" required/>
                <input type="password" name="password" placeholder="Password"
                       pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                       title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                       required/>
                <div class="msg">
                <c:if test="${not empty loginMessage}">
                    <p style="color:white;">${loginMessage}</p>
                </c:if><div>
                <button>Login</button>
                <p>Not a member? <span><a href="register">Sign Up</a></span></p>
            </div>
            <div id="message">
                <h3>Password must contain the following:</h3>
                <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                <p id="number" class="invalid">A <b>number</b></p>
                <p id="length" class="invalid">Minimum <b>8 characters</b></p>
            </div>
        </div>
    </div>
</form>
</body>

</html>