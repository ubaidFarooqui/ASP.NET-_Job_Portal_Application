<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="ResumeBuilder.aspx.cs" Inherits="ResumeBuilder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" height="701" border="0" cellpadding="5" cellspacing="5">
        <tr>
            <td height="41" align="right">&nbsp;</td>
            <td>
                <asp:Label ID="lbl_error" runat="server" Font-Bold="False" Font-Size="Medium" ForeColor="Red"></asp:Label>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Height="83px" />
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style3" style="height: 22px"><strong><h3>Personal Information</h3></strong> </td>
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
            <td align="right" style="height: 25px"><h3>Qualification Information</h3></td>
            <td style="height: 25px"></td>
        </tr>
        <tr>
            <td height="34" align="right">10th</td>
            <td>
                <asp:TextBox ID="txt_10th" runat="server"></asp:TextBox>
            &nbsp;( like Aggregate 77% )</td>
        </tr>
        <tr>
            <td height="34" align="right">12th</td>
            <td>
                <asp:TextBox ID="txt_12th" runat="server"></asp:TextBox>
                (like Aggregate 77%)</td>
        </tr>
        <tr>
            <td height="34" align="right">Graduation</td>
            <td>
                <asp:TextBox ID="txt_graduation" runat="server"></asp:TextBox>
                (like CGPA within 4.0 of Range)</td>
        </tr>
        <tr>
            <td height="34" align="right">Post Graduation</td>
            <td>
                <asp:TextBox ID="txt_post_graduation" runat="server"></asp:TextBox>
                (like CGPA wihtin 4.0 of Range)</td>
        </tr>
        <tr>
            <td height="34" align="right"><h3>Resume File</h3></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="auto-style2" style="height: 1px">
                Please Upload Your Resume Here<br />
               <strong>Please upload a file only with .doc/ .docx/ .pdf/ .txt Extension</strong></td>
            <td class="auto-style2" style="height: 1px">
                <asp:FileUpload ID="File_Upload_Resume" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="File_Upload_Resume" ErrorMessage="Please Upload the Resume">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lbl_file_error" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 54px">
                </td>
            <td style="height: 54px">
                <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit" />
            </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

