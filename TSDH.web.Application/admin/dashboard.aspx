<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="TSDH.web.Application.Con_lau_moi_tim_duoc_trang_admin_cua_a_nha.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Content/fontawesome5.13.0/css/all.css" rel="stylesheet" type="text/css" />
    <link href="../Content/admin.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="form1" runat="server" class="container-fluid">
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
                        <a class="nav-link active" href="#">Active</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-10 p-3">
                <table class="table table-borderless table-dark">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">First</th>
                            <th scope="col">Last</th>
                            <th scope="col">Handle</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td colspan="2">Larry the Bird</td>
                            <td>@twitter</td>
                        </tr>
                    </tbody>
                </table>

                <div class="col-md-12" style="padding: unset; margin: unset;">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </form>
    <script src="../Scripts/jquery-3.5.1.slim.min.js" type="text/javascript"></script>
    <script src="../Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="../Scripts/popper.min.js" type="text/javascript"></script>
</body>
</html>
