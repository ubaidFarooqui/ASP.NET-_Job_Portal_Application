<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="100%" height="701" border="0" cellpadding="5" cellspacing="5">
      <tr>
        <td align="right" style="height: 21px"><h3>Login Information</h3> </td>
        <td style="height: 21px"></td>
      </tr>
      <tr>
        <td height="41" align="right">&nbsp;</td>
        <td>
            <asp:Label ID="lbl_error" runat="server" Font-Bold="False" Font-Size="Medium" ForeColor="Red"></asp:Label>
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Height="83px" />
          </td>
      </tr>
      <tr>
        <td height="41" align="right">*Login ID </td>
        <td>
          &nbsp;<asp:TextBox ID="txt_loginId" runat="server" Height="16px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_loginId" ErrorMessage="Login ID is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td height="41" align="right">*Password</td>
        <td>
            <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="Password ID is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td height="41" align="right">*Re-Type Password </td>
        <td>
            <asp:TextBox ID="txt_retypepass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_retypepass" ErrorMessage="Re-type ID is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pass" ControlToValidate="txt_retypepass" ErrorMessage="Passwords must be same" ForeColor="Red">Password must be same</asp:CompareValidator>
          </td>
      </tr>
      <tr>
        <td align="right" class="auto-style3" style="height: 22px"><h3>Personal Information</h3></td>
        <td class="auto-style3" style="height: 22px"></td>
      </tr>
      <tr>
        <td height="34" align="right">*Name</td>
        <td>
            <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_name" ErrorMessage="Name is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td height="34" align="right" valign="top">*Address</td>
        <td>
            <asp:TextBox ID="txt_address" runat="server" Height="69px" TextMode="MultiLine" Width="212px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_address" ErrorMessage="Address is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td height="34" align="right">*Country</td>
        <td>
		&nbsp;<asp:DropDownList ID="ddl_country" runat="server">
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>Pakistan</asp:ListItem>
                <asp:ListItem>Iran</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Polland</asp:ListItem>
                <asp:ListItem>Germany</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddl_country" ErrorMessage="Select a Country is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td height="34" align="right">*Email ID </td>
        <td>
            <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_email" ErrorMessage="Email is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td height="34" align="right">*Contact Number </td>
        <td>
            <asp:TextBox ID="txt_contactnumber" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_contactnumber" ErrorMessage="Contact Number is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td height="34" align="right"><h3>Other Information</h3></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="34" align="right">Qualification</td>
        <td>
            <asp:TextBox ID="txt_qualification" runat="server"></asp:TextBox>
          </td>
      </tr>
      
      <tr>
        <td height="28" align="right"><input type="checkbox" name="chkTandC"/></td>
        <td><a href="TandC.html" class="link">Terms and Conditions</a></td>
      </tr>
      <tr>
        <td height="28" align="right">&nbsp;</td>
        <td>
            <asp:Button ID="btn_signup_submit" runat="server" OnClick="btn_signup_submit_Click" Text="Submit" Width="80px" />
          </td>
      </tr>
    </table>

</asp:Content>

