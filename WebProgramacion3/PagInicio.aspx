<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagInicio.aspx.cs" Inherits="WebProgramacion3.PagInicio" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página de inicio de sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
        }
        .login-container {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 100%;
            max-width: 400px;
            margin: 20px auto;
        }
        /* Cambio en el color de la barra superior y del botón */
        .navbar-light .navbar-nav .nav-link {
            color: #008080; /* Color del texto en la barra superior */
        }
        .navbar-light .navbar-nav .nav-link:hover {
            color: #00b3b3; /* Color del texto en la barra superior al pasar el mouse */
        }
        .navbar-light .navbar-brand {
            color: #008080; /* Color del texto del logo en la barra superior */
        }
        .navbar-light .navbar-brand:hover {
            color: #00b3b3; /* Color del texto del logo en la barra superior al pasar el mouse */
        }
        .btn-teal {
            background-color: #008080; /* Color de fondo del botón */
            border-color: #008080; /* Color del borde del botón */
            color: #fff; /* Color del texto del botón */
        }
        .btn-teal:hover {
            background-color: #00b3b3; /* Color de fondo del botón al pasar el mouse */
            border-color: #00b3b3; /* Color del borde del botón al pasar el mouse */
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">Programacion 3</a>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Registrarse</a>
                </li>
            </ul>
        </div>
    </nav>

    <form id="form1" runat="server">
        <div class="login-container">
            <h2 class="text-center">Iniciar sesión</h2>
            <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="text-danger text-center" Visible="false" />
            <div class="form-group">
                <label for="txtUsername">Usuario:</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtPassword">Contraseña:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Button ID="btnLogin" runat="server" Text="Iniciar sesión" OnClick="btnLogin_Click" CssClass="btn btn-teal btn-block" />
            </div>
        </div>
    </form>
</body>
</html>