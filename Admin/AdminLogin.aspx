<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table border="0" cellpadding="5" cellspacing="5" height="327" width="100%">
        <tr>
            <td align="right" height="41">&nbsp;</td>
            <td>
                <asp:Label ID="lbl_error" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" height="41">Login ID </td>
            <td>&nbsp;<asp:TextBox ID="txt_loginID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_loginID" ErrorMessage="Login ID is required" ForeColor="Red">Please Enter Login ID </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 55px">Password</td>
            <td style="height: 55px">&nbsp;<asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="Password is required" ForeColor="Red">Please Enter Password</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 34px"></td>
            <td style="height: 34px">
                <asp:Button ID="btn_login" runat="server" OnClick="btn_login_Click" Text="Login" />
            </td>
        </tr>
        <tr>
            <td align="right" height="63">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

