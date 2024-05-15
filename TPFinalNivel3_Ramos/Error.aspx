<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="TPFinalNivel3_Ramos.Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <style>
                html {
                    height: 100%;
                }

                a {
                    text-decoration: none;
                    color: #000000;
                }

                    a:hover {
                        color: #838181;
                    }

                body {
                    font-family: 'Lato', sans-serif;
                    color: #888;
                    margin: 0;
                }

                #main {
                    display: table;
                    width: 100%;
                    height: 100vh;
                    text-align: center;
                }

                .fof {
                    display: table-cell;
                    vertical-align: middle;
                }

                    .fof h1 {
                        font-size: 50px;
                        display: inline-block;
                        padding-right: 12px;
                        animation: type .5s alternate infinite;
                    }
            </style>

            <div id="main">
                <div class="fof">
                    <h1>Error</h1>
                    <h3>
                        <asp:Label ID="lblError" Text="" runat="server" />
                    </h3>
                    <a href="Default.aspx">
                        <h2>Volver</h2>
                    </a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
