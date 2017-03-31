<%@ Page Title="DGP" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DireccionGeneralPostGrado._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style18" align="center">
            <tr>
                <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style26" colspan="3" style="empty-cells: hide; background-color: #008080; border-collapse: collapse; table-layout: auto; border-spacing: 100px;">
                    <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Iniciar sesión"></asp:Label>
                </td>
                <td class="auto-style14" rowspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style17" style="empty-cells: hide; background-color: #008080; border-collapse: collapse; table-layout: auto; border-spacing: 100px;">
                    <asp:Label ID="Label1" runat="server" Text="Usuario: " ForeColor="White" CssClass="auto-style27"></asp:Label>
                </td>
                <td class="auto-style20" style="empty-cells: hide; background-color: #008080; border-collapse: collapse; table-layout: auto; border-spacing: 100px;">
                    <asp:TextBox ID="txtUsuario" runat="server" Width="132px" Height="33px"></asp:TextBox>
                </td>
                <td class="auto-style24" rowspan="2" style="empty-cells: hide; background-color: #008080; border-collapse: collapse; table-layout: auto; border-spacing: 100px;">
                    <asp:Image ID="Image2" runat="server" Height="75px" ImageUrl="~/Imagenes/login.png" Width="75px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style16" style="empty-cells: hide; background-color: #008080; border-collapse: collapse; table-layout: auto; border-spacing: 100px;">
                    <asp:Label ID="Label2" runat="server" Text="Contraseña: " ForeColor="White" CssClass="auto-style27"></asp:Label>
                </td>
                <td class="auto-style19" style="empty-cells: hide; background-color: #008080; border-collapse: collapse; table-layout: auto; border-spacing: 100px;">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="132px" Height="33px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style12" colspan="3" style="empty-cells: hide; background-color: #008080; border-collapse: collapse; table-layout: auto; border-spacing: 100px;">
                    <asp:ImageButton ID="imagButAceptar" runat="server" Height="50px" ImageUrl="~/Imagenes/aceptar.png" Width="56px" OnClick="ImageButton1_Click2" />
                    <asp:ImageButton ID="imagButCancelar" runat="server" Height="50px" ImageUrl="~/Imagenes/cancelar.png" Width="56px" />
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style13 {
        width: 122px;
    }
    .auto-style14 {
        width: 122px;
            text-align: left;
        }
    .auto-style16 {
            width: 237px;
            text-align: right;
        }
    .auto-style17 {
        height: 24px;
        width: 237px;
            text-align: right;
        }
    .auto-style18 {
        width: 891px;
    }
        .auto-style19 {
            text-align: left;
            width: 163px;
        }
        .auto-style20 {
            text-align: left;
            height: 24px;
            width: 163px;
        }
        .auto-style21 {
            width: 306px;
        }
        .auto-style22 {
            height: 24px;
            width: 306px;
        }
        .auto-style23 {
            width: 45px;
            text-align: center;
        }
        .auto-style24 {
            text-align: left;
            width: 45px;
        }
        .auto-style26 {
            height: 24px;
            text-align: center;
        }
        .auto-style27 {
            font-size: large;
        }
    </style>
</asp:Content>

