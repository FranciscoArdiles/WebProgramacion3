<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagInicio.aspx.cs" Inherits="WebProgramacion3.PagInicio" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Página Principal</title>
    <style>
        /* Estilos barra de navegación */
        ul.navbar {
            list-style-type: none;
            margin: 0;
            padding: 0;
            background-color: #333;
            overflow: hidden;
        }
        li.nav-item {
            float: left;
        }
        li.nav-item a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        li.nav-item a:hover {
            background-color: #555;
        }
        /* Elementos a la derecha */
        li.nav-item-right {
            float: right;
        }
        li.nav-item-right a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        li.nav-item-right a:hover {
            background-color: #555;
        }

        /* Pie de pagina */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        /* Container del registro */
        .login-container {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 400px;
            margin: 50px auto;
            font-family: Arial, sans-serif;
            font-size: large;
            background-color: #f2f2f2;
            text-align: center;
        }
        /* Margen entre elementos */
        .form-group {
            margin: 10px 0;
        }
        /* Boton del container */
        .btn-teal {
            background-color: #008080;
            border-color: #008080;
            color: #fff;
            font-size: x-large;
            margin: 20px auto;
        }
        .btn-teal:hover {
            background-color: #00b3b3;
            border-color: #00b3b3;
        }
    </style>
</head>
<body>
     <div>
            <ul class="navbar">
                <li class="nav-item"><a href="PagAlumnos.aspx">Alumnos</a></li>
                <li class="nav-item"><a href="PagEditar.aspx">Profesores</a></li>
                <li class="nav-item-right"><a href="PagRegistro.aspx">Registrarse</a></li>
                <li class="nav-item-right"><a href="PagInicio.aspx">Iniciar Sesión</a></li>
            </ul>
        </div>
    <form id="form1" runat="server">

        <!-- Barra de navegación -->
       

        <!-- Contenido de la página -->
        <div class="login-container">
            <h2>Iniciar sesión</h2>
            <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="text-danger text-center" Visible="false" />
            <div class="form-group">
                <div style="display: inline-block; width: 120px; text-align: right; margin-right: 10px;">
                    <label for="txtUsername">Usuario:</label>
                </div>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <div style="display: inline-block; width: 120px; text-align: right; margin-right: 10px;">
                    <label for="txtPassword">Contraseña:</label>
                </div>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Button ID="btnLogin" runat="server" Text="Iniciar sesión" OnClick="btnLogin_Click" CssClass="btn btn-teal" />
            </div>
        </div>

        <!-- Pie de página -->
        <footer>
            Trabajo Final de Programación
        </footer>
    </form>
</body>
</html>