<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagEditar.aspx.cs" Inherits="WebProgramacion3.PagEditar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Editar Profesores</title>
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
        /* Estilo para el GridView */
        .gridview-style {
            font-size: 1.2em; /* Aumentar el tamaño de la fuente */
            width: 80%; /* Aumentar el ancho del GridView */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul class="navbar">
                <li class="nav-item"><a href="PagAlumnos.aspx">Alumnos</a></li>
                <li class="nav-item"><a href="PagEditar.aspx">Profesores</a></li>
                <li class="nav-item-right"><a href="PagRegistro.aspx">Registrarse</a></li>
                <li class="nav-item-right"><a href="PagInicio.aspx">Iniciar Sesión</a></li>
            </ul>
        </div>

        <!-- Contenido de la página de Edición de Profesores -->
        <div>
            <h2>Editar Profesores</h2>
            
            <!-- GridView para mostrar y editar los profesores -->
            <div id="divDgv" runat="server" visible="true">
                <asp:GridView ID="gvProfesores" runat="server" AutoGenerateColumns="false" OnRowEditing="gvProfesores_RowEditing" CssClass="gridview-style">
                    <Columns>
                        <asp:TemplateField HeaderText="Acciones">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit" Text="Editar" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="APELLIDO" HeaderText="Apellido" />
                        <asp:BoundField DataField="NOMBRE" HeaderText="Nombre" />
                    </Columns>
                </asp:GridView>
            </div>
            <!-- Div para Editar -->
            <div id="divControl" runat="server" visible="false">
                <h3>Editar Profesores</h3>
                <div class="row">
                    <div class="col-lg-2 text-right">
                        <asp:Label ID="lblId" runat="server" Text="ID : "></asp:Label>
                    </div>
                    <div class="col-lg-3">
                        <asp:TextBox ID="txtId" Font-Bold="true" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                        <asp:Label ID="lblApellido" runat="server" Text="Apellido : "></asp:Label>
                    </div>
                    <div class="col-lg-3">
                        <asp:TextBox ID="txtApellido" Font-Bold="true" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-lg-2 text-right">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre : "></asp:Label>
                    </div>
                    <div class="col-lg-3">
                        <asp:TextBox ID="txtNombre" Font-Bold="true" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-lg-2 text-right">
                </div>
            </div>
        </div>

        <footer>
            Trabajo Final de Programación
        </footer>
    </form>
</body>
</html>