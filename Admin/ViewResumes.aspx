<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewResumes.aspx.cs" Inherits="Admin_ViewResumes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF6600" Text="View / Download Resumes"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lbl_error" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Height="180px" Width="100%">
        <Columns>
            <asp:BoundField DataField="vName" HeaderText="Name" SortExpression="vName" />
            <asp:BoundField DataField="vPhone" HeaderText="Phone Number" SortExpression="vPhone" />
            <asp:BoundField DataField="vMailId" HeaderText="Mail ID" SortExpression="vMailId" />
            <asp:BoundField DataField="vGraduation" HeaderText="Graduation" SortExpression="vGraduation" />
            <asp:BoundField DataField="vPostGraduation" HeaderText="Post Graduation" SortExpression="vPostGraduation" />
            <asp:BoundField DataField="vJobId" HeaderText="Job ID" SortExpression="vJobId" />
            <asp:TemplateField HeaderText="Download">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.vResumeFile", "../Resumes/{0}") %>'>Download</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2" onclick="return confirm('Are you sure you want to delete this Resume ?');" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.iRid", "ViewResumes.aspx?del={0}") %>'>Delete</asp:HyperLink>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:farooquiportal %>" SelectCommand="SELECT * FROM [tblResumes]"></asp:SqlDataSource>
    <br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

