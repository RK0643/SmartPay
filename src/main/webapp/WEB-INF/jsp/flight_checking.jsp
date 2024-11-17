<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Flight Ticket Booking Form</title>
    <link href="<c:url value='/resources/css/flight.css' />" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="booking-form-box">
    <div class="radio-btn">
        <input type="radio" class="btn" name="check" checked="checked"><span>Roundtrip</span>
        <input type="radio" class="btn" name="check"><span>One Way</span>
        <input type="radio" class="btn" name="check"><span>Multi-City</span>
    </div>

    <div class="booking-form">
        <label>Flying From</label>
        <input type="text" class="form-control" placeholder="City or Airport">
        <label>Flying To</label>
        <input type="text" class="form-control" placeholder="City or Airport">
        <div>

            <div class="input-grp">
                <label>Departing</label>
                <input type="date" class="form-control select-date">
            </div>

            <div class="input-grp">
                <label>Returning</label>
                <input type="date" class="form-control select-date">
            </div>

            <div class="input-grp">
                <label>Adults</label>
                <input type="number" class="form-control" value="0">
            </div>

            <div class="input-grp">
                <label>Children</label>
                <input type="number" class="form-control" value="0">
            </div>

            <div class="input-grp">
                <label>Travel Class</label>
                <select class="custom-select">
                    <option value="1">Economy Class</option>
                    <option value="2">Buisness Class</option>
                </select>
            </div>

            <div class="input-grp">
                <button type="button" class="btn btn-primary" flight>Show Flights</button>
            </div>
            <div class="input-grp">
                <a href="dashboard.jsp" class="btn btn-secondary">Back to Dashboard</a>
            </div>
        </div>
</body>
</html>
