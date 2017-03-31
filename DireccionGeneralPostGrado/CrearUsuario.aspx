<%@ Page Title="" Language="C#" MasterPageFile="~/big.Master" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="DireccionGeneralPostGrado.CrearUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 140%;
            height: 350px;
        }
        .auto-style18 {
            height: 39px;
            width: 241px;
            text-align: right;
        }
        .auto-style19 {
            font-size: large;
            height: 39px;
            width: 155px;
            text-align: right;
        }
        .auto-style21 {
            width: 382px;
            height: 39px;
            text-align: left;
        }
        .auto-style22 {
            width: 155px;
        }
        .auto-style24 {
            width: 241px;
        }
        .auto-style26 {
            width: 241px;
            text-align: right;
        }
        .auto-style30 {
            width: 124px;
        }
        .auto-style31 {
            font-size: large;
            height: 39px;
            width: 124px;
            text-align: left;
        }
        .auto-style32 {
            text-align: left;
            font-size: large;
            width: 124px;
        }
        .auto-style34 {
            text-align: right;
            font-size: large;
            width: 124px;
        }
        .auto-style35 {
            width: 382px;
        }
        .auto-style36 {
            text-align: left;
            font-size: large;
            width: 155px;
        }
        .auto-style37 {
            width: 382px;
            text-align: left;
        }
        .auto-style38 {
            font-size: large;
        }
        .auto-style39 {
            text-align: right;
            font-size: large;
            width: 155px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Label ID="Label6" runat="server" Text="Codigo" CssClass="auto-style38"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="txtCodigo" runat="server" Height="33px" Enabled="False" TabIndex="1"></asp:TextBox>
            </td>
            <td class="auto-style19">
                <asp:Label ID="Label10" runat="server" Text="Nick"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtNick" runat="server" Height="33px" TabIndex="4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Label7" runat="server" Text="Nombre" CssClass="auto-style38"></asp:Label>
            </td>
            <td class="auto-style32">
                <asp:TextBox ID="txtNombre" runat="server" Height="33px" TabIndex="2"></asp:TextBox>
            </td>
            <td class="auto-style39">
                <asp:Label ID="Label11" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td class="auto-style37">
                <asp:TextBox ID="txtPass" runat="server" Height="33px" TextMode="Password" TabIndex="5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Label8" runat="server" Text="Apellido" CssClass="auto-style38"></asp:Label>
            </td>
            <td class="auto-style32">
                <asp:TextBox ID="txtApellido" runat="server" Height="33px" TabIndex="3"></asp:TextBox>
            </td>
            <td class="auto-style39">
                <asp:Label ID="Label13" runat="server" Text="Repetir Contraseña"></asp:Label>
            </td>
            <td class="auto-style37">
                <asp:TextBox ID="txtRepass" runat="server" Height="33px" TextMode="Password" OnTextChanged="txtRepass_TextChanged" TabIndex="6"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Label9" runat="server" Text="Perfil" CssClass="auto-style38"></asp:Label>
            </td>
            <td class="auto-style32">
                <asp:DropDownList ID="dropPerfil" runat="server" Height="33px" TabIndex="7">
                    <asp:ListItem>Administrador</asp:ListItem>
                    <asp:ListItem>Operador</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style39">
                <asp:Label ID="Label12" runat="server" Text="Estado"></asp:Label>
            </td>
            <td class="auto-style37">
                <asp:DropDownList ID="dropEstado" runat="server" Height="33px" Width="106px" TabIndex="8">
                    <asp:ListItem>Activo</asp:ListItem>
                    <asp:ListItem>Inactivo</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style34">
                <asp:Button ID="butAceptar" runat="server" Height="33px" Text="Aceptar" Width="100px" OnClick="butAceptar_Click" TabIndex="9" />
            </td>
            <td class="auto-style36">
                <asp:Button ID="butCancelar" runat="server" Height="33px" Text="Cancelar" Width="100px" OnClick="butCancelar_Click" BorderStyle="Solid" TabIndex="10" />
            </td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
