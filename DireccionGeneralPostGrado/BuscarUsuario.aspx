<%@ Page Title="" Language="C#" MasterPageFile="~/big.Master" AutoEventWireup="true" CodeBehind="BuscarUsuario.aspx.cs" Inherits="DireccionGeneralPostGrado.BuscarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        width: 139%;
        height: 380px;
    }
    .auto-style16 {
        font-size: xx-large;
    }
    .auto-style17 {
        text-align: right;
    }
    .auto-style18 {
        font-size: large;
    }
    .auto-style19 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
    <tr>
        <td colspan="4">
            <asp:Label ID="Label5" runat="server" CssClass="auto-style16" Text="Buscar usuarios"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style19">
            <asp:Label ID="Label6" runat="server" CssClass="auto-style18" Text="Buscar por"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="33px">
                <asp:ListItem>Nick</asp:ListItem>
                <asp:ListItem Selected="True">Codigo</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox1" runat="server" Height="33px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="idUsuario" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="124px" Width="886px">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/check.png" ShowSelectButton="True" />
                    <asp:BoundField DataField="idUsuario" HeaderText="Codigo" ReadOnly="True" SortExpression="idUsuario" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="Apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="perfil" HeaderText="Perfil" SortExpression="perfil" />
                    <asp:BoundField DataField="nick" HeaderText="Nick" SortExpression="nick" />
                    <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SISGESDOCConnectionString %>" SelectCommand="SELECT idUsuario, nombre, apellido, perfil, nick, estado FROM TBusr"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
