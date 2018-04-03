<!--
    Filename		: Quotations.aspx
    Author			: Rowen Govender
    Created			: 29/03/2018
    Description		: A static webpage, that allows clients to 'build' thier own quote
                      by selecting different social media platforms, and how many posts 
                      a month are required, as well as setup of their social media platforms.
-->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quotations.aspx.cs" Inherits="ZonkeTechProject.Quotations" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns = "http://www.w3.org/1999/xhtml">

<head id="Head1" runat = "server">
    <meta name = "viewport" content = "width=device-width, initial-scale = 1"/>

    <title>Quotations</title>

    <link rel = "stylesheet" type = "text/css" href = "Styles/bootstrap.css"/>
    <script type = "text/javascript" src = "Scripts/quotation.js"></script>

    <style type = "text/css">
        #favicons
        {
            text-align:right;
	        height:50px;
	        background-color: #4d4d4d;
	        color: white;
        } 
        
        #header /* styling for header */
        {
	        text-align:left;
	        height:50px;
	        background-color:White;
	        padding-top: 30px;
	        padding-left: 110px;
	        padding-bottom: 90px;
        } 
        
        body 
        {
            font-family: Arial;
        }
        
        #content
        {
            text-align:left;
	        margin-left:120px;
	        margin-right:400px;
	        height:1100px;
	        background-color: white;
            width: 424px;
        }
               
        body 
        {
            font-family: Arial;
        }
        
        #footer
        {
            text-align:right;
	        height:170px;
	        background-color: #4d4d4d;
	        color: white;
        }

        /* Style the tab */
     
        .style1
        {
            height: 20px;
        }

        input[type=number]::-webkit-inner-spin-button 
        {
        
        }
        
        
              
    </style>

    
</head>

<body>
    <form id = "quotes" runat = "server">
        <div id = "favicons">
            <!--<a href = "home.html"><img src = "Images/" alt = "Facebook"></a>-->
	    </div> 

        <div id = "header"> <!-- Page header -->
	        <img src= "Images/ZonkeTech.png" alt = "ZonkeTech"/><!-- Logo -->
	    </div>

        <div id = "content"> 
            <div class = "container" style = "padding-right:870px">
                <ul id = "menuTabs" class = "nav nav-tabs nav-justified">
                    <li class = "active" style = "padding-left:15px"><a href="javascript:void(0);" class = "menuItem" id = "tab_1">Setup</a></li>
                    <li><a href = "javascript:void(0);" class="menuItem" id = "tab_2">Posting</a></li>
                </ul>

            <div class = "tab-content">
                <div class = "tab-pane active" id = "tab_1">
                    <div class = "container">
                        <table style = "width:35%; border-width: 1px; border-color: #ccc; border-style: solid;">
					                <tr>
                                        <td style = "padding-top:40px; padding-left:20px;"></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td style = "padding-left:20px" rowspan="5">
                                            <asp:CheckBoxList ID = "CheckBoxList_Setup" runat = "server" AutoPostBack="False">
                                                <asp:ListItem Value = "350">Facebook</asp:ListItem>
                                                <asp:ListItem Value = "350">Instagram</asp:ListItem>
                                                <asp:ListItem Value = "350">Twitter</asp:ListItem>
                                                <asp:ListItem Value = "350">LinkedIn</asp:ListItem>
                                                <asp:ListItem Value = "600">Google+ & Google MyBusiness</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </td>
                                       <td style = "padding-right:30px">R350</td>
                                     </tr>

                                    <tr>
                                        <td >R350</td>
                                    </tr>

                                    <tr>
                                        <td >R350</td>
                                    </tr>

                                    <tr>
                                        <td >R350</td>
                                    </tr>

                                    <tr>
                                        <td >R600</td>
                                    </tr>

                                    <tr>
                                        <td align="right">
                                            <label id = "total" runat = "server" style = "padding-right:20px; padding-top:90px;">Total:</label>
                                        </td>
                                        
                                        <td style = "padding-top:90px"><label id = "initSetupTotal" runat = "server" style = "text-decoration:underline"></label></td> 
                                    </tr>

                                    <tr>
                                        <td><asp:Button ID = "btnSetupQuote" runat = "server" 
                                            style = "padding:7px; padding-left:20px; padding-right:20px; margin-left:140px; margin-bottom:10px"
                                            Text = "Get Quote" onClientClick = "return quote()"/>
                                        </td>
                                        <td></td>
                                    </tr> 
                                </table>
                    </div>
                </div>

                <div class = "tab-pane" id = "tab_2">
                    <div class = "container">
                        <table style = "width:35%; border-width: 1px; border-color: #ccc; border-style: solid">
                                <tr>
                                    <td style = "padding-top:20px; padding-left:20px; padding-right:30px;">Post Design (per post)</td>
                                    <td style = "padding-top:20px">R300</td>
                                </tr>

                                <tr>
                                    <td style = "padding-top:10px; padding-left:20px; padding-right:30px;" 
                                        rowspan="4">
                                        <asp:CheckBoxList id = "CheckBoxList_PostingA" runat = "server" autopostback ="False">
                                            <asp:ListItem Value = "75">Facebook</asp:ListItem>
                                            <asp:ListItem Value = "75">Instagram</asp:ListItem>
                                            <asp:ListItem Value = "75">Twitter</asp:ListItem>
                                            <asp:ListItem Value = "75">Google+</asp:ListItem>
                                        </asp:CheckBoxList>
                                    </td>

                                    <td style = "padding-top:10px; padding-right:30px;">R75</td>
                                </tr>
                                  <tr>
                                      <td>R75</td>
                                  </tr>
                                  <tr>
                                      <td>R75</td>
                                  </tr>
                                  <tr>
                                      <td>R75</td>
                                  </tr>
                                <tr>
                                    <td style = "padding-left:20px; padding-right:30px;" rowspan="2">
                                        <asp:CheckBoxList id = "CheckBoxList_PostingB" runat = "server" AutoPostBack = "False">
                                            <asp:ListItem Value = "75">Linked</asp:ListItem>
                                            <asp:ListItem Value = "100">Google MyBusiness</asp:ListItem>
                                        </asp:CheckBoxList>
                                    </td>
                                    <td>R75</td>
                                </tr>

                                  <tr>
                                      <td>R100</td>
                                  </tr>

                                  <tr>
                                    <td style = "padding-left:20px;">Number of posts per month:</td>
                                    <td>
                                        <asp:TextBox id = "numberOfPosts" type = "number" min = "0" runat = "server" Width = "40px"/>
                                    </td>
                                  </tr>

                                <tr>
                                    <td align="right">
                                        <label id = "Label1" runat = "server" style = "padding-right:20px; padding-top:30px;">Total:</label>
                                    </td>
                                        
                                     <td style = "padding-top:30px">
                                        <label id = "initPostingTotal" runat = "server" style = "text-decoration:underline"></label>
                                     </td> 
                                </tr>

                                <tr>
                                    <td><asp:Button ID = "btnPostingQuote" runat = "server" 
                                        style = "padding:7px; padding-left:20px; padding-right:20px; margin-left:140px; margin-bottom:10px"
                                        Text = "Get Quote" onClientClick = "return quote()"/>
                                    </td>
                                    <td></td>
                                </tr>

				              </table>
                    </div>
                </div>
            </div>
            </div>

            <br />
            <br />
            <br />
            <br />
            <!-- -->
            <table style = "width: 100%; border-width: 1px; border-color: #ccc; border-style: solid; margin-left:32px;">
                <thead style = "background-color:#f2f2f2; padding-top:5px; border-width: 1px; border-color: #ccc; border-style: solid">
                    <tr>
                        <td style = "padding-top:10px; padding-left:5px;">Details</td>
                        <td></td>
                    </tr>
                </thead>

                <tr>
                    <td style = "padding-top:10px; padding-left:30px">
                        Company Name:<asp:RequiredFieldValidator id = "RequiredFieldValidator11" runat = "server" ErrorMessage = "*"
                        ControlToValidate = "CompanyName" ValidationGroup = "save"/>
                    </td>
                    <td style = "padding-top:10px">
                        <asp:TextBox id = "CompanyName" runat = "server" Width = "200px"/>
                    </td>
                </tr>

                <tr>
                    <td style = "padding-top:10px; padding-left:30px">
                        Tel. No<asp:RequiredFieldValidator id ="RequiredFieldValidator1" runat = "server" ErrorMessage = "*"
                        ControlToValidate = "TelNo" ValidationGroup = "save" />
                    </td>
                    <td style = "padding-top:10px">
                        <asp:TextBox id = "TelNo" runat = "server" Width = "200px" />
                    </td>
                </tr>

                <tr>
                    <td style = "padding-top:10px; padding-left:30px">
                        Name<asp:RequiredFieldValidator id = "RequiredFieldValidator3" runat = "server" ErrorMessage = "*"
                        ControlToValidate = "Name" ValidationGroup = "save"/>
                    </td>
                    <td style = "padding-top:10px">
                        <asp:TextBox id = "Name" runat = "server" Width = "200px"/>
                    </td>
                </tr>

                <tr>
                    <td style = "padding-top:10px; padding-left:30px;">
                        Email Address<asp:RequiredFieldValidator id ="RequiredFieldValidator2" runat = "server" ErrorMessage = "*"
                        ControlToValidate = "Email" ValidationGroup = "save" />
                    </td>
                    <td style = "padding-top:10px">
                        <asp:TextBox id = "Email" runat = "server" Width = "200px"/>
                        <asp:RegularExpressionValidator runat = "server" ID = "RegularExpressionValidator23" SetFocusOnError = "true" ControlToValidate = "Email"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup = "save" />
                    </td>
                </tr>

                <tr>
                    <td style = "padding-top:10px; padding-left:30px;">Summary<br /></td>
                    <td></td>
                </tr>
                <tr>
                    <td style = "padding-top:10px; padding-left:30px; padding-bottom:10px;" colspan="2">
                        <textarea id = "textAreaSummary" cols = "49" name = "S1" rows = "10" runat = server></textarea>
                    </td>
                </tr>

                <tr>
                    <td style = "align:center" colspan="2">
                        <asp:Button id = "btnQuoteMe" runat = "server" Text = "Quote Me" OnClick = "btnQuoteMe_Click" ValidationGroup = "save"
                        style = "padding:7px; padding-left:20px; padding-right:20px; margin-left:140px; margin-bottom:10px"/>
                    </td>
                </tr>

                <tfoot style = "background-color:#f2f2f2; padding-top:10px; border-width: 1px; border-color: #ccc; border-style: solid">
                    <tr>
                        <td style = "padding-top:25px"></td>
                        <td></td>
                    </tr>
                </tfoot>

            </table>
            
            <!-- -->
        </div>
    </form>

    <div id = "footer">
            
	</div> 
</body>
</html>

