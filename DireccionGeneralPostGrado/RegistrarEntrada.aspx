<%@ Page Title="Registrar" Language="C#" MasterPageFile="~/big.Master" AutoEventWireup="true" CodeBehind="RegistrarEntrada.aspx.cs" Inherits="DireccionGeneralPostGrado.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table  class="auto-style18" align="center" >
        <tr>
            <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Label ID="Label11" runat="server" CssClass="auto-style19" Text="Regsitro de expediente"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style14">
                <asp:Label ID="Label10" runat="server" Text="Numero de Entrada" CssClass="auto-style16"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="txtEntrada" runat="server" CssClass="auto-style17" Height="33px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label4" runat="server" Text="Numero de oficio" CssClass="auto-style16"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="txtOficio" runat="server" TextMode="Number" OnTextChanged="txtOficio_TextChanged" CssClass="auto-style17" Height="33px"></asp:TextBox>
            </td>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label5" runat="server" Text="Procedencia" CssClass="auto-style16"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:DropDownList ID="DropProcedencia" runat="server" CssClass="auto-style17" Height="33px">
                    <asp:ListItem>Rectoria</asp:ListItem>
                    <asp:ListItem>Facultad de Ciencias</asp:ListItem>
                    <asp:ListItem>Facultad de Humanidades</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label6" runat="server" Text="Fecha de ingreso" CssClass="auto-style16"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="txtFecha" runat="server" CssClass="auto-style17" Height="33px"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtFecha_CalendarExtender" runat="server" BehaviorID="txtFecha_CalendarExtender" Format="dd/MM/yyyy" PopupButtonID="ImgFechaButon" TargetControlID="txtFecha" PopupPosition="BottomRight" />
                <asp:ImageButton ID="ImgFechaButon" runat="server" ImageUrl="~/Imagenes/calendario_2.png" ImageAlign="AbsMiddle" />
            </td>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label7" runat="server" Text="Descripcion" CssClass="auto-style16"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="txtDescripcion" runat="server" Height="102px" TextMode="MultiLine" Width="203px" CssClass="auto-style17"></asp:TextBox>
            </td>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label8" runat="server" Text="Archivo" CssClass="auto-style16"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:FileUpload ID="UploadArchivo" runat="server" CssClass="auto-style17" Height="33px" />
            </td>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label9" runat="server" Text="Estado" CssClass="auto-style16"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:DropDownList ID="DropEstado" runat="server" CssClass="auto-style17" Height="33px" Enabled="False">
                    <asp:ListItem>Entrada</asp:ListItem>
                    <asp:ListItem>Salida</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style15">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <asp:Button ID="butAceptar" runat="server" Text="Aceptar" OnClick="butAceptar_Click" CssClass="auto-style17" Height="33px" Width="100px" />
            </td>
            <td class="auto-style15">
                <asp:Button ID="butCancelar" runat="server" Text="Cancelar" CssClass="auto-style17" Height="33px" Width="100px" />
            </td>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style14 {
            text-align: right;
            width: 229px;
        }
        .auto-style15 {
            text-align: left;
        }
        .auto-style16 {
            font-size: large;
        }
        .auto-style17 {
            font-size: medium;
        }
    .auto-style18 {
        width: 131%;
            height: 649px;
        }
    .auto-style19 {
        font-size: xx-large;
    }
    </style>
</asp:Content>

