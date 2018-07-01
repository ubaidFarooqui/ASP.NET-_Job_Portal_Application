<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Forgotpassword.aspx.cs" Inherits="Forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="100%" height="236" border="0" cellpadding="5" cellspacing="5">
      <tr>
        <td height="35" colspan="2" align="left">Please, submit you Login ID, we will send your account information back to your E-Mail ID </td>
        </tr>
      <tr>
        <td height="41" align="right" >&nbsp;</td>
        <td>
            <asp:Label ID="lbl_error" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:Label>
          </td>
      </tr>
      
      <tr>
        <td height="41" align="right" >Login ID </td>
        <td>
          &nbsp;<asp:TextBox ID="txt_login" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_login" ErrorMessage="Please Enter your Login ID" ForeColor="Red">Please Enter Your Login ID</asp:RequiredFieldValidator>
          </td>
      </tr>
      
      <tr>
        <td height="34" align="right">&nbsp;</td>
        <td>
            <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit" />
          </td>
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


