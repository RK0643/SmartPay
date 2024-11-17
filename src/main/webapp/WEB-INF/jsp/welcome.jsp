<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome</title>
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <script src="<c:url value='${pageContext.request.contextPath}/resources/javascript/javascript.js' />" type="text/javascript"></script>
    <link href="<c:url value='/resources/css/sidemenu.css' />" rel="stylesheet" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.js" integrity="sha512-8Z5++K1rB3U+USaLKG6oO8uWWBhdYsM3hmdirnOEWp8h2B1aOikj5zBzlXs8QOrvY9OxEnD2QDkbSKKpfqcIWw==" crossorigin="anonymous"></script>
    <script src="/resources/javascript/script.js"></script>
</head>
<body>
<div class="container">
    <div class="sidebar">
        <div class="head">
            <div class="user-img"><img src="${pageContext.request.contextPath}/resources/images/ic_profile.png" alt=""></div>
            <div class="user-details">
                <p class="title">Welcome!</p>
                <p class="name">${firstname}</p>
                <p class="name">${phonenumber}</p>
            </div>
        </div>
        <div class="nav">
            <div class="menu">
                <p class="title">Main</p>
                <ul>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/ic_payments.png" alt=""><span class="text">Accept Payments</span></a></li>
                    <p class="title">Details</p>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/ic_orders.png" alt=""><span class="text">My Orders</span></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/ic_passbook.png" alt=""><span class="text">My Passbook</span></a></li>
                    <p class="title">Settings</p>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/ic_settings.png" alt=""><span class="text">Payment Settings</span></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/ic_profile_settings.png" alt=""><span class="text">Profile Settings</span></a></li>
                    <p class="title">Support</p>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/ic_helpline.png" alt=""><span class="text">Help & Support</span></a></li>
                    <li><a href="login"><img src="${pageContext.request.contextPath}/resources/images/ic_logout.png" alt=""><span class="text">Logout</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="mainpage">
        <div class="top-bar">
            <div class="left"><img src="${pageContext.request.contextPath}/resources/images/ic_menu2.png" alt="" height="50px" width="40px" ></div>
            <div class="middle"><img src="${pageContext.request.contextPath}/resources/images/SmartPaylogo.png" alt=""   height="70px" width="100px"></div>
            <div class="right"><img src="${pageContext.request.contextPath}/resources/images/ic_notification_bell.png" height="50px" width="40px" ></div>
        </div>
        <div class="blue-background">
            <div>
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/pay_money.png" alt="">
                </a>
                <p>Pay</p>
            </div>
            <div>
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/request_money.png" alt="Add Money">

                </a>
                <p>Add Money</p>
            </div>
            <div>
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/payment_history.png" alt="Payments">

                </a>
                <p>Payments</p>
            </div>
            <div>
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/transactions.png" alt="Transactions">

                </a>
                <p>Transactions</p>
            </div>
        </div>
        <div class="grid-container">
            <div class="grid-item">
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/ic_recharge.png" alt="Recharge">
                </a>
                <p>Recharge</p>
            </div>
            <div class="grid-item">
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/ic_electricity.png" alt="Electricity">
                </a>
                <p>Electricity</p>
            </div>
            <div class="grid-item">
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/ic_train.png" alt="Train">
                </a>
                <p>Train</p>
            </div>
            <div class="grid-item">
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/ic_flight.png" alt="Flight">
                </a>
                <p>Flight</p>
            </div>
            <div class="grid-item">
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/ic_bus.png" alt="Bus">
                </a>
                <p>Bus</p>
            </div>
            <div class="grid-item">
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/ic_dth.png" alt="DTH">
                </a>
                <p>DTH</p>
            </div>
            <div class="grid-item">
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/ic_broadband.png" alt="Broadband">
                </a>
                <p>Broadband</p>
            </div>
            <div class="grid-item">
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/ic_landline.png" alt="Landline">
                </a>
                <p>Landline</p>
            </div>
            <div class="grid-item">
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/ic_movie_ticket.png" alt="Movie_Ticket">
                </a>
                <p>Movie_Ticket</p>
            </div>
            <div class="grid-item">
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/ic_hotel.png" alt="Hotel">
                </a>
                <p>Hotel</p>
            </div>
            <div class="grid-item">
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/ic_google_play.png" alt="GooglePlay">
                </a>
                <p>GooglePlay</p>
            </div>
            <div class="grid-item">
                <a href="#" class="btn btn-light">
                    <img src="${pageContext.request.contextPath}/resources/images/ic_more.png" alt="more">
                </a>
                <p>More</p>
            </div>
        </div>
        <div class="slider">
            <figure>
                <div class="slide1">
                    <p class="slidetext"></p>
                    <img src="${pageContext.request.contextPath}/resources/images/bb1.jpg" alt="">
                </div>
                <div class="slide2">
                    <p class="slidetext"></p>
                    <img src="${pageContext.request.contextPath}/resources/images/bb2.jpg" alt="">
                </div>
                <div class="slide3">
                    <p class="slidetext"></p>
                    <img src="${pageContext.request.contextPath}/resources/images/bb3.jpg" alt="">
                </div>
                <div class="slide4">
                    <p class="slidetext"></p>
                    <img src="${pageContext.request.contextPath}/resources/images/bb4.jpg" alt="">
                </div>
                <div class="slide5">
                    <p class="slidetext"></p>
                    <img src="${pageContext.request.contextPath}/resources/images/movie_banner_2.png" alt="">
                </div>
            </figure>
        </div>
    </div>
</div>

</body>
</html>
