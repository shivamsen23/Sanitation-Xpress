<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Between Date Report</title>
</head>
<body>

<div class="card shadow mt-5">
    <div class="card-body">
        <h5 class="p-2" style="border-bottom: 2px solid green;">Between Dates Report</h5>
        <div class="container-fluid mt-2">

            <div class="form-group">
                <form action="datereportDtls.jsp" method="POST">
                    
                    <label><b>From Date</b></label>
                    <input type="date" name="FromDate" class="form-control" required>
                    <label><b>To Date</b></label>
                    <input type="date" name="ToDate" class="form-control" required>
                    <br>
                    <input type=submit name=submit value="Submit" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>