<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewJobs.aspx.cs" Inherits="Admin_ViewJobs" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF6600" Text="View Jobs"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lbl_error" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Height="180px" Width="100%">
            <Columns>
                <asp:BoundField DataField="iJid" HeaderText="Job ID" InsertVisible="False" ReadOnly="True" SortExpression="iJid" />
                <asp:BoundField DataField="vJobTitle" HeaderText="Job Title" SortExpression="vJobTitle" />
                <asp:BoundField DataField="tDescription" HeaderText="Description" SortExpression="tDescription" />
                <asp:BoundField DataField="dLastDate" HeaderText="Last Date for Applying" SortExpression="dLastDate" />
                <asp:BoundField DataField="iNoOfPost" HeaderText="No. Of Post" SortExpression="iNoOfPost" />
                <asp:BoundField DataField="vRequiredQualification" HeaderText="Required Qualification" SortExpression="vRequiredQualification" />
                <asp:BoundField DataField="vRequiredExp" HeaderText="Required Experience" SortExpression="vRequiredExp" />
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#DataBinder.Eval(Container, "DataItem.iJid", "ViewJobs.aspx?del={0}")%>'>Delete</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.iJid", "EditJobs.aspx?edit={0}")%>'>Edit</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:farooquiportal %>" SelectCommand="SELECT * FROM [tblJobs]"></asp:SqlDataSource>
    </p>
</asp:Content>



