<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditJobs.aspx.cs" Inherits="Admin_EditJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF6600" Text="Edit Jobs"></asp:Label>
    <br />
    <br />
    <br />
    <table style="width: 100%">
        <tr>
            <td align="right" style="height: 17px; width: 315px;">&nbsp;</td>
            <td style="height: 17px">
                <asp:Label ID="lbl_error" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 17px; width: 315px;">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Small" Text="*Job Title"></asp:Label>
            </td>
            <td style="height: 17px">
                <asp:TextBox ID="txt_jobtitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_jobtitle" ErrorMessage="Please enter the Job title" ForeColor="Red">Please enter the job Title</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 315px" valign="top">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Text="*Description"></asp:Label>
            </td>
            <td valign="top">
                <asp:TextBox ID="txt_description" runat="server" Height="145px" TextMode="MultiLine" Width="251px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_description" ErrorMessage="Please enter the job description" ForeColor="Red">Please enter the Job description</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 315px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" Text="*Last Date for Applying"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_lastdatetoapply" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_lastdatetoapply" ErrorMessage="Please enter last application date" ForeColor="Red">Please enter last application date</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 315px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" Text="*No. Of Post"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_noofpost" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_noofpost" ErrorMessage="Please enter number of posts available" ForeColor="Red">Please enter number of posts available</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 315px">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" Text="*Required Qualification"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_requiredqualification" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_requiredqualification" ErrorMessage="Please enter required qualification" ForeColor="Red">Please enter required qualification</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 17px; width: 315px;">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" Text="*Required Experience"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_requiredexperience" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_requiredexperience" ErrorMessage="Please enter required experience" ForeColor="Red">Please enter required experience</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 315px">&nbsp;</td>
            <td>
                <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Update" />
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 315px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

