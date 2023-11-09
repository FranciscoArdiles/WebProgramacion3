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
            font-size: 1.2em; 
            width: 80%; 
            font-size: x-large;
        }
        .btn-teal {
            background-color: #008080;
            border-color: #008080;
            color: #fff;
            font-size: x-large;
        }
        .btn-teal:hover {
            background-color: #00b3b3;
            border-color: #00b3b3;
        }
        /* Centrar el contenido de la columna Acciones */
        .gridview-center-actions {
            text-align: center;
        }
        /* Estilo para labels y textboxes en divControl */
        .divControl-label {
            font-size: x-large;
        }
        .divControl-textbox {
            font-size: x-large;
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul class="navbar">
                <li class="nav-item"><a href="#">WebProgramacion3</a></li>
                <li class="nav-item"><a href="PagAlumnos.aspx">Alumnos</a></li>
                <li class="nav-item"><a href="PagEditar.aspx">Profesores</a></li>
                <li class="nav-item-right"><a href="PagInicio">Log Out</a></li>
                <%--<li class="nav-item-right"><a href="PagInicio.aspx">Iniciar Sesión</a></li>--%>
            </ul>
        </div>

        <!-- Contenido de la página -->
        <div>
            <h1>Lista de Profesores</h1>
        </div>
            <!-- GridView de los profesores -->
            <div id="divDgv" runat="server" visible="true">
                <asp:GridView ID="gvProfesores" runat="server" AutoGenerateColumns="false" OnRowCommand="gvProfesores_RowCommand" CssClass="gridview-style">
                    <Columns>
                        <asp:TemplateField HeaderText="Acciones">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Editando" CommandArgument='<%#Eval("id") %>' Text="Editar" CssClass="btn btn-teal" Font-Bold="true" />
                            </ItemTemplate>
                            <ItemStyle CssClass="gridview-center-actions" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="APELLIDO" HeaderText="Apellido" />
                        <asp:BoundField DataField="NOMBRE" HeaderText="Nombre" />
                    </Columns>
                </asp:GridView>
            </div>
            <!-- Div para Editar -->
            <div id="divControl" runat="server" visible="false">
                <h2>Editar Profesores</h2>
                <div class="row">
                    <div class="col-lg-2 text-right divControl-label">
                        <asp:Label ID="lblId" runat="server" Text="ID : "></asp:Label>
                    </div>
                    <div class="col-lg-3">
                        <asp:TextBox ID="txtId" Font-Bold="true" runat="server" Enabled="false" CssClass="form-control divControl-textbox"></asp:TextBox>
                    </div>
                    <div>
                    <asp:Label ID="lblApellido" runat="server" Text="Apellido : " CssClass="divControl-label"></asp:Label>
                    </div>
                    <div class="col-lg-3">
                        <asp:TextBox ID="txtApellido" Font-Bold="true" runat="server" CssClass="form-control divControl-textbox"></asp:TextBox>
                    </div>
                    <div class="col-lg-2 text-right divControl-label">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre : "></asp:Label>
                    </div>
                    <div class="col-lg-3">
                        <asp:TextBox ID="txtNombre" Font-Bold="true" runat="server" CssClass="form-control divControl-textbox"></asp:TextBox>
                    </div>
                    </br>
                    <div>
                        <asp:Button ID="btnConfirmar" Font-Bold="true" Text="Confirmar" runat="server" OnClick="btnConfirmar_Click" CssClass="btn btn-teal" />
                        <asp:Button ID="btnCancelar" Font-Bold="true" Text="Cancelar" runat="server" OnClick="btnCancelar_Click" CssClass="btn btn-teal" />
                    </div>
                </div>
            </div>

        <footer>
            Trabajo Final de Programación
        </footer>
    </form>
</body>
</html>
