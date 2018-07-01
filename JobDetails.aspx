<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="JobDetails.aspx.cs" Inherits="JobDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Height="200px" Width="100%">
    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="iJid" HeaderText="Job ID" InsertVisible="False" ReadOnly="True" SortExpression="iJid" />
        <asp:BoundField DataField="vJobTitle" HeaderText="Job Title" SortExpression="vJobTitle" />
        <asp:BoundField DataField="tDescription" HeaderText="Description" SortExpression="tDescription" />
        <asp:BoundField DataField="dLastDate" HeaderText="Last Date to Apply" SortExpression="dLastDate" />
        <asp:BoundField DataField="iNoOfPost" HeaderText="No. Of Post" SortExpression="iNoOfPost" />
        <asp:BoundField DataField="vRequiredQualification" HeaderText="Required Qualification" SortExpression="vRequiredQualification" />
        <asp:BoundField DataField="vRequiredExp" HeaderText="Required Experience" SortExpression="vRequiredExp" />
    </Fields>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
</asp:DetailsView>
<asp:Button ID="btn_applynow" runat="server" Font-Italic="True" ForeColor="#FF6600" OnClick="btn_applynow_Click" Text="Apply Now" />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PortalConnectionString %>" SelectCommand="SELECT * FROM [tblJobs] WHERE ([iJid] = @iJid)">
    <SelectParameters>
        <asp:QueryStringParameter Name="iJid" QueryStringField="id" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

