<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="100%" height="327" border="0" cellpadding="5" cellspacing="5">
      <tr>
        <td height="41" align="right">&nbsp;</td>
        <td>
            <asp:Label ID="lbl_error" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
          </td>
      </tr>
      <tr>
        <td height="41" align="right">Login ID </td>
        <td>
          &nbsp;<asp:TextBox ID="txt_loginID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_loginID" ErrorMessage="Login ID is required" ForeColor="Red">Please Enter Login ID </asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td align="right">Password</td>
        <td>
          &nbsp;<asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="Password is required" ForeColor="Red">Please Enter Password</asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td align="right">
            <asp:CheckBox ID="chkboc_rememberpass" runat="server" />
          </td>
        <td>Remember My Password </td>
      </tr>
      <tr>
        <td align="right" style="height: 34px"></td>
        <td style="height: 34px">
            <asp:Button ID="btn_login" runat="server" OnClick="btn_login_Click" Text="Login" />
          </td>
      </tr>
      <tr>
        <td height="28" align="right">&nbsp;</td>
        <td class="link"><a href="Forgotpassword.aspx" class="link">Forgot Password</a></td>
      </tr>
      <tr>
        <td height="28" align="right">&nbsp;</td>
        <td><a href="Signup.aspx" class="link">New User </a></td>
      </tr>
      <tr>
        <td height="63" align="right">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
</asp:Content>


