﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagAlumnos.aspx.cs" Inherits="WebProgramacion3.PagAlumnos" %>

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

        /* Pie de página */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        /* Cointener Alumnos */
        .alumno-container {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px;
        }
        .alumno-label {
            font-weight: bold;
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

        <!-- Contenido de la página de Alumnos -->
        <div>
            <h2>Lista de Alumnos</h2>
            
            <div class="alumno-container">
                <label class="alumno-label">Nombre:</label>
                <label>Nombre del Alumno</label>
            </div>

            <div class="alumno-container">
                <label class="alumno-label">DNI:</label>
                <label>DNI del Alumno</label>
            </div>

            <div class="alumno-container">
                <label class="alumno-label">Estado:</label>
                <label>Estado del Alumno</label>
            </div>

            <!-- Botones de navegación -->
            <asp:Button ID="btnFirst" runat="server" Text="<||" OnClick="btnFirst_Click" />
            <asp:Button ID="btnPrev" runat="server" Text="<<" OnClick="btnPrev_Click" />
            <asp:Button ID="btnNext" runat="server" Text=">>" OnClick="btnNext_Click" />
            <asp:Button ID="btnLast" runat="server" Text="||>" OnClick="btnLast_Click" />
        </div>

        <footer>
            Trabajo Final de Programación
        </footer>
    </form>
</body>
</html>