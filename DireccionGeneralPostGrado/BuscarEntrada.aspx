<%@ Page Title="" Language="C#" MasterPageFile="~/big.Master" AutoEventWireup="true" CodeBehind="BuscarEntrada.aspx.cs" Inherits="DireccionGeneralPostGrado.Buscar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        text-align: right;
    }
    .auto-style15 {
        text-align: left;
    }
        .auto-style16 {
            width: 137%;
        }
        .auto-style17 {
            height: 28px;
        }
        .auto-style18 {
            text-align: right;
            height: 28px;
        }
        .auto-style19 {
            text-align: left;
            height: 28px;
        }
        .auto-style20 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style15">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style14">
            &nbsp;</td>
        <td class="auto-style15">
            <asp:Label ID="Label4" runat="server" Text="Oficio" CssClass="auto-style20"></asp:Label>
            <asp:TextBox ID="txtBuscar" runat="server" Height="33px"></asp:TextBox>
            <asp:Button ID="butBuscar" runat="server" Height="33px" OnClick="Button1_Click" Text="Buscar" Width="100px" />
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
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style15">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="217px" Width="886px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="idEntrada">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/check.png" ShowSelectButton="True" />
                    <asp:BoundField DataField="fechaEntrada" DataFormatString="{0:dd-MM-yyyy}" HeaderText="Fecha de entrada" SortExpression="fechaEntrada" />
                    <asp:BoundField DataField="idEntrada" HeaderText="Codigo" ReadOnly="True" SortExpression="idEntrada" />
                    <asp:BoundField DataField="numOficio" HeaderText="Oficio" SortExpression="numOficio" />
                    <asp:BoundField DataField="lugOrigen" HeaderText="Procedencia" SortExpression="lugOrigen" />
                    <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" />
                    <asp:BoundField DataField="apellido" HeaderText="Empleado" SortExpression="apellido" />
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
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DireccionGeneralPostGrado.DBclassDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="TBents">
            </asp:LinqDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SISGESDOCConnectionString %>" SelectCommand="SELECT TBent.fechaEntrada, TBent.numOficio, TBent.lugOrigen, TBent.estado, TBent.descripcion, TBusr.apellido, TBent.idEntrada FROM TBent INNER JOIN TBusr ON TBent.idUsuario = TBusr.idUsuario WHERE (TBent.estado = 'Entrada') ORDER BY TBent.fechaEntrada DESC"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style17"></td>
        <td class="auto-style18"></td>
        <td class="auto-style19">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SISGESDOCConnectionString %>" SelectCommand="SELECT [fechaEntrada], [numOficio], [idEntrada], [lugOrigen], [estado] FROM [TBent] WHERE ([idEntrada] = @idEntrada)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtBuscar" Name="idEntrada" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
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
