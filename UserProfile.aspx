<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lbl_error" runat="server" Font-Size="Medium" ForeColor="#FF6600"></asp:Label>
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 436px">
                <asp:DetailsView ID="DetailsView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="180px" Width="100%" AutoGenerateRows="False" DataSourceID="SqlDataSource1" HorizontalAlign="Left">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <Fields>
                        <asp:BoundField DataField="vName" HeaderText="Name:" SortExpression="vName" />
                        <asp:BoundField DataField="vAddress" HeaderText="Address:" SortExpression="vAddress" />
                        <asp:BoundField DataField="vContactNumber" HeaderText="Contact Number:" SortExpression="vContactNumber" />
                        <asp:BoundField DataField="vMailId" HeaderText="Mail ID:" SortExpression="vMailId" />
                        <asp:BoundField DataField="vQualification" HeaderText="Qualification:" SortExpression="vQualification" />
                        <asp:BoundField DataField="vCountry" HeaderText="Country:" SortExpression="vCountry" />
                    </Fields>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                </asp:DetailsView>
                        </td>
                        <td>
                            <img src="images/userprofilejpg.jpg" style="width: 180px; height: 180px" /></td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:farooquiportal %>" SelectCommand="SELECT * FROM [tblusers] WHERE ([vLoginId] = @vLoginId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="vLoginId" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

