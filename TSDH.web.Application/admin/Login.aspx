<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TSDH.web.Application.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Register</title>
	<link href="~/Content/Site.css" rel="stylesheet" type="text/css" />
	<link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form id="form1" runat="server">
		<div class="container register">
			<div class="row">
				<div class="col-md-3 register-left "style="margin:auto;">
					<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
					<h3>Welcome</h3>
					
				</div>
				<div class="col-md-9 register-right">
					<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Employee</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Hirer</a>
						</li>
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
							<h3 class="register-heading">Apply as a Employee</h3>
							<div class="row register-form">
								<div class="col-md-12">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Username *" value="" />
									</div>
									<div class="form-group">
										<input type="password" class="form-control" placeholder="Password*" value="" />
									</div>
									<div class="form-group">
										<input type="checkbox" name="remember" class="my-2"  value="" />
										<small>Remember your password</small>
									</div>
									<div class="form-group">
										<a href="">You forget your password ???</a>
									</div>
									 <input type="submit" class="btnRegister" value="Login" />

								</div>
							   
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
