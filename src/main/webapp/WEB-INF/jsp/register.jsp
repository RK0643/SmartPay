<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title>Login</title>

    <script src="<c:url value='/resources/javascript/javascript.js' />" type="text/javascript"></script>

    <link href="<c:url value='/resources/css/styles.css' />" rel="stylesheet" type="text/css">

</head>

<body>
<form id="regForm" modelAttribute="user" action="registerProcess" method="post">
    <div class="vid-container">
        <img src="${pageContext.request.contextPath}/resources/images/background.png" alt="" width="100%" height="100%">
        <div class="inner-container">
            <div class="box">
                <h1>SmartPay</h1>
                <input type="text"  name="firstname"  placeholder="Enter first name" required/>
                <input type="text"  name="lastname" placeholder="Enter last name" />
                <input type="text" name="phonenumber" placeholder="Phone Number" pattren ="[0-9]{3}-[0-9]{3}-[0-9]{4}" required/>
                <input type="password" name="password" placeholder="Enter password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                       title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                       required/>
                <div class="message">
                <c:if test="${not empty errorMessage}">
                    <p>${errorMessage}</p>
                </c:if>
                <c:if test="${not empty successMessage}">
                    <p style="color:white;">${successMessage}</p>
                </c:if><div>

                <button type="submit">Register</button>

                <p>Already have Account? <span><a href="login">Log In</a></span></p>

            </div>

        </div>

    </div>

</form>
</body>

</html>