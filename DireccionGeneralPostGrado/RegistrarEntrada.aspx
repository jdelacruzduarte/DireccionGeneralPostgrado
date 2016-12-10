<%@ Page Title="Registrar" Language="C#" MasterPageFile="~/big.Master" AutoEventWireup="true" CodeBehind="RegistrarEntrada.aspx.cs" Inherits="DireccionGeneralPostGrado.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table  class="auto-style7" align="center" >
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label4" runat="server" Text="Numero de oficio"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="txtOficio" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label5" runat="server" Text="Procedencia"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Rectoria</asp:ListItem>
                    <asp:ListItem>Facultad de Ciencias</asp:ListItem>
                    <asp:ListItem>Facultad de Humanidades</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label6" runat="server" Text="Fecha de ingreso"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label7" runat="server" Text="Descripcion"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox1" runat="server" Height="102px" TextMode="MultiLine" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label8" runat="server" Text="Archivo"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label9" runat="server" Text="Estado"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Entrada</asp:ListItem>
                    <asp:ListItem>Salida</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style14 {
        text-align: right;
        width: 185px;
    }
        .auto-style15 {
            text-align: left;
        }
    </style>
</asp:Content>

