<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentDetail.aspx.cs" Inherits="TSDH.web.Application.admin.studentDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Content/fontawesome5.13.0/css/all.css" rel="stylesheet" type="text/css" />
    <link href="../Content/admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark row p-0">
            <div class="col-md-2"></div>
            <div class="col-md-10 py-2 border-left">
                <ul class="nav collapse navbar-collapse d-flex justify-content-end">
                    <li class="nav-item dropdown ">
                        <a class="nav-link" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search text-light"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right  p-0 d">
                            <div class="d-flex">
                                <input class="form-control border-0" type="search" placeholder="Search" aria-label="Search" style="width: 200px" />
                                <button class="btn btn-outline-secondary"><i class="fas fa-search"></i></button>
                            </div>

                        </div>


                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><i class="fas fa-bell"></i><sup><span class="badge badge-danger">9</span></sup>
                            <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="far fa-envelope"></i><sup><span class="badge badge-danger">9</span></sup></a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user"></i>
                        </a>
                        <div class="dropdown-menu-right dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/admin/profile">Profile</a>
                            <a class="dropdown-item" href="/admin/setting">setting</a>
                            <div class="dropdown-divider"></div>
                          <a class="dropdown-item" href="/admin/Login">Logout</a>
                             
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="row" style="height: 90vh;">
            <div class="col-md-2 bg-dark ">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="/admin/dashboard">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/ThongTinThiSinh">Hồ sơ thí sinh</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/HocBa">Học Bạ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/THPTQG">THPT Quốc Gia</a>
                    </li>
                </ul>
            </div>
    </form>
</body>
</html>
