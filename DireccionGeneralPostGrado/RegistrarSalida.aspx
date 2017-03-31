<%@ Page Title="" Language="C#" MasterPageFile="~/big.Master" AutoEventWireup="true" CodeBehind="RegistrarSalida.aspx.cs" Inherits="DireccionGeneralPostGrado.RegistrarSalida" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        width: 139%;
    }
    .auto-style15 {
        font-size: xx-large;
    }
    .auto-style16 {
        font-size: large;
    }
    .auto-style18 {
        text-align: left;
    }
    .auto-style19 {
        text-align: right;
    }
    .auto-style20 {
        height: 103px;
    }
    .auto-style21 {
        text-align: right;
        height: 103px;
    }
    .auto-style22 {
        text-align: left;
        height: 103px;
    }
        .auto-style23 {
            height: 28px;
        }
        .auto-style24 {
            text-align: right;
            height: 28px;
        }
        .auto-style25 {
            text-align: left;
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
    <tr>
        <td colspan="4">
            <asp:Label ID="Label5" runat="server" CssClass="auto-style15" Text="Registro de salida de expediente"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">
            <asp:Label ID="Label6" runat="server" CssClass="auto-style16" Text="Numero de entrada"></asp:Label>
        </td>
        <td class="auto-style18">
            <asp:TextBox ID="txtEntrada" runat="server" Height="33px" Width="144px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">
            <asp:Label ID="Label7" runat="server" CssClass="auto-style16" Text="Numero de Oficio"></asp:Label>
        </td>
        <td class="auto-style18">
            <asp:TextBox ID="txtOficio" runat="server" Height="33px" Width="144px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">
            <asp:Label ID="Label8" runat="server" CssClass="auto-style16" Text="Destino"></asp:Label>
        </td>
        <td class="auto-style18">
            <asp:TextBox ID="txtDestino" runat="server" Height="33px" Width="144px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">
            <asp:Label ID="Label9" runat="server" CssClass="auto-style16" Text="Fecha"></asp:Label>
        </td>
        <td class="auto-style18">
            <asp:TextBox ID="txtFecha" runat="server" Height="33px" Width="144px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style21">
            <asp:Label ID="Label10" runat="server" CssClass="auto-style16" Text="Descripcion"></asp:Label>
        </td>
        <td class="auto-style22">
            <asp:TextBox ID="TextBox1" runat="server" Height="88px" TextMode="MultiLine" Width="239px"></asp:TextBox>
        </td>
        <td class="auto-style20"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">
            <asp:Label ID="Label11" runat="server" CssClass="auto-style16" Text="Estado"></asp:Label>
        </td>
        <td class="auto-style18">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True">Salida</asp:ListItem>
                <asp:ListItem>Entrada</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style18">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">
            <asp:Button ID="buttAceptar" runat="server" Text="Aceptar" />
        </td>
        <td class="auto-style18">
            <asp:Button ID="buttCancelar" runat="server" Text="Cancelar" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style18">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style23"></td>
        <td class="auto-style24"></td>
        <td class="auto-style25"></td>
        <td class="auto-style23"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style18">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style18">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
