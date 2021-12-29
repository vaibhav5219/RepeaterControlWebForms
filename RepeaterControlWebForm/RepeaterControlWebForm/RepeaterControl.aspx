<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterControl.aspx.cs" Inherits="RepeaterControlWebForm.RepeaterControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </td>
            </tr>
        </table>
        <br />
                <%--we have to specify each row and column in repeater control--%>
        <table border="1" style="margin-right: 2px">
                    <asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource1" runat="server" >
                         <ItemTemplate>
                            <tr>
                                <td>
                                    <h3>ID</h3>
                                 </td>
                                <td>
                                    <%# Eval("UserId") %>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <h3>User Name</h3>
                                 </td>
                                <td>
                                    <%# Eval("UserName") %>
                                </td>
                              </tr>
                             <tr>
                                 <td>
                                    <h3>User Address</h3>
                                 </td>
                                <td>
                                   <%# Eval("UserAddress") %>
                                </td>
                            </tr>
                             <tr>
                                 <td>
                                    <h3>Password</h3>
                                 </td>
                                <td>
                                    <%# Eval("Password") %>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <br />
                        </SeparatorTemplate>
                        </asp:Repeater>
        </table>
        <br />
    </div>
        <asp:sqldatasource id="SqlDataSource1"          
            connectionstring="<%$ ConnectionStrings:Vaibhav test dbConnectionString%>" 
        selectcommand="SELECT UserId, UserName, UserAddress, Password FROM [Users]"
        runat="server">
      </asp:sqldatasource>
    </form>
</body>
</html>
