<%@ Page Title="" Language="C#" MasterPageFile="~/big.Master" AutoEventWireup="true" CodeBehind="UpdateEntrada.aspx.cs" Inherits="DireccionGeneralPostGrado.UpdateEntrada" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   

    <style type="text/css">
        .auto-style14 {
            width: 135%;
        height: 656px;
    }
        .auto-style15 {
            font-size: large;
        }
        .auto-style16 {
            text-align: right;
        }
        .auto-style17 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label5" runat="server" CssClass="auto-style15" Text="Numero de entrada"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtEntrada" runat="server" Enabled="False" Height="33px" Width="144px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text="Numero de oficio"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtOficio" runat="server" Enabled="False" Height="33px" Width="144px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label7" runat="server" CssClass="auto-style15" Text="Procedencia"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:DropDownList ID="dropProcedencia" runat="server" Enabled="False" Width="100px" Height="33px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label8" runat="server" CssClass="auto-style15" Text="Fecha de ingreso"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtFecha" runat="server" EnableTheming="True" Enabled="False" Height="33px" Width="133px"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtFecha_CalendarExtender" runat="server" BehaviorID="txtFecha_CalendarExtender" Format="dd/MM/yyyy" TargetControlID="txtFecha" DaysModeTitleFormat="dd/MM/yyyy" PopupButtonID="ImgFechaButon" PopupPosition="BottomRight" />
                <asp:ImageButton ID="ImgFechaButon" runat="server" Enabled="False" ImageUrl="~/Imagenes/calendario_2.png" ImageAlign="AbsMiddle" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label9" runat="server" Text="Descripción"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtDescripcion" runat="server" Enabled="False" Height="113px" TextMode="MultiLine" Width="260px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label10" runat="server" CssClass="auto-style15" Text="Archivo"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:FileUpload ID="UploadArchivo" runat="server" Enabled="False" Height="33px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label11" runat="server" CssClass="auto-style15" Text="Estado"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:DropDownList ID="dropEstado" runat="server" Enabled="False" Height="33px">
                    <asp:ListItem Selected="True">Entrada</asp:ListItem>
                    <asp:ListItem>Salida</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style17">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">
                <asp:Button ID="butGuardar" runat="server" Text="Guardar" Enabled="False" Height="33px" Width="100px" />
            </td>
            <td class="auto-style17">
                <asp:Button ID="butActualizar" runat="server" Text="Actualizar" OnClick="butCancelar_Click" Height="33px" Width="100px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
