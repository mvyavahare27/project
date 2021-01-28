<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>payment page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style>
    .cc-img {
        margin: 0 auto;
    }
</style>
</head>
<body>
<form method="POST" action="logout">
	<input type="submit" value="logout" style="float: right;">
</form>
<h3 style="color: red;">User: ${email}</h3>
<form>
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4 offset-md-4">
            <div class="card ">
                <div class="card-header">
                    <div class="row">
                        <h3 class="text-xs-center">Payment Details</h3>
                        <img class="img-fluid cc-img" src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png">
                    </div>
                </div>
                <div class="card-block">
                    <form role="form">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD NUMBER</label>
                                    <div class="input-group">
                                        <input type="tel" class="form-control" placeholder="Valid Card Number" minlength="16" maxlength="16" />
                                        <span class="input-group-addon"><span class="fa fa-credit-card"></span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <input type="tel" class="form-control" placeholder="MM / YY" minlength="4" maxlength="4"  />
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 float-xs-right">
                                <div class="form-group">
                                    <label>CV CODE</label>
                                    <input type="tel" class="form-control" placeholder="CVC" minlength="3" maxlength="3" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD OWNER</label>
                                    <input type="text" class="form-control" placeholder="Card Owner Names" />
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-xs-12">
                            <button class="btn btn-warning btn-lg btn-block">Process payment</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>