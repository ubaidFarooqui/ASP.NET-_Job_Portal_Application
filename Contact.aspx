<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="91%" border="0" cellspacing="5" cellpadding="5">
                        <tr >
                          <td align="center">Ubaid Farooqui<br>
                            Dittes Strasse 6<br>
                            09126 Chemnitz
                            Germany <br>
                            <br>
                            Contact Number:015213190894<br>
                            <br>
                            E-Mail ID: <a href="mailto:farooqui.ubaid@gmail.com" class="link">farooqui.ubaid@gmail.com</a><br>
                            admin@gmail.com </td>
                        </tr>
                        <tr>
                          <td height="54"><hr size="0"/>
                            <table width="100%" border="0" cellspacing="5" cellpadding="5">
                              <tr>
                                <td colspan="2">You can post your query here, we will contact you by phone or by your E-Mail ID 
                                    <br />
                                    <br />
                                    Field marked with &quot;*&quot; are complusory Fields</td>
                                </tr>
                              <tr>
                                <td width="15%" align="right">*Name</td>
                                <td width="82%">
                                    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="Please Enter Name" ForeColor="Red">Please Enter Your Name</asp:RequiredFieldValidator>
                                  </td>
                              </tr>
                              <tr>
                                <td align="right">*Phone</td>
                                <td>
                                    <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_phone" ErrorMessage="Please Enter Phone Number" ForeColor="Red">Please Enter Your Contact Number</asp:RequiredFieldValidator>
                                  </td>
                              </tr>
                              <tr>
                                <td align="right">*E-Mail</td>
                                <td>
                                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="Please Enter the email Address" ForeColor="Red">Please Enter Your Email</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Inccorect email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                  </td>
                              </tr>
                              <tr>
                                <td align="right" valign="top">*Query</td>
                                <td>
                                    <asp:TextBox ID="txt_query" runat="server" Height="105px" TextMode="MultiLine" Width="269px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_query" ErrorMessage="Please Enter Your Query" ForeColor="Red">Please Enter Your Query</asp:RequiredFieldValidator>
                                  </td>
                              </tr>
                              <tr>
                                <td align="right">&nbsp;</td>
                                <td>
                                    <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit" />
                                  </td>
                              </tr>
                            </table></td>
                        </tr>
                    </table>


</asp:Content>


