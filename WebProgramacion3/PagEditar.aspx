<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagEditar.aspx.cs" Inherits="WebProgramacion3.PagEditar" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul class="navbar">
                <li class="nav-item"><a href="#">Alumnos</a></li>
                <li class="nav-item"><a href="#">Profesores</a></li>
                <li class="nav-item-right"><a href="#">Registrarse</a></li>
                <li class="nav-item-right"><a href="#">Iniciar Sesión</a></li>
            </ul>
        </div>

        <!-- Contenido de tu página principal aquí -->
        <div>
            Contenido de la página principal.
        </div>

        <footer>
            Trabajo Final de Programación
        </footer>
    </form>
</body>
</html>