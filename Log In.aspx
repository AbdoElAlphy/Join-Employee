<%@ Page Title="تسجيل الدخول" Language="C#" AutoEventWireup="true" CodeBehind="Log_In.aspx.cs" Inherits="JoinEmp.Log_In" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Login - CPC</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        html, body { width: 100%; height: 100%; }

        body {
            font-family: Arial, sans-serif;
            background: #06172c;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .login-card {
            width: 400px;
            max-width: 92%;
            background: rgba(5, 20, 40, 0.55);
            border: 1px solid rgba(230, 189, 97, 0.35);
            border-radius: 18px;
            padding: 45px 38px;
            box-shadow: 0 0 40px rgba(0,0,0,0.4);
        }

        .login-card h1 { font-size: 30px; text-align: center; margin-bottom: 6px; }
        .login-card h1 span { color: #e6bd61; }

        .subtitle { text-align: center; color: #b9c6d8; font-size: 14px; margin-bottom: 30px; }

        .field-group { margin-bottom: 20px; }

        .field-label { display: block; font-size: 14px; color: #d9e1ee; margin-bottom: 6px; }

        .field-input {
            width: 100%;
            padding: 12px 14px;
            border-radius: 8px;
            border: 1px solid rgba(255,255,255,0.15);
            background: rgba(255,255,255,0.06);
            color: white;
            font-size: 14px;
        }
        .field-input:focus { outline: none; border-color: #e6bd61; }

        .field-error { display: block; font-size: 12px; color: #ff8080; margin-top: 5px; }

        .btn-submit {
            width: 100%;
            padding: 13px;
            margin-top: 10px;
            border: none;
            border-radius: 30px;
            background: linear-gradient(135deg, #f4d37f, #d9a93d);
            color: #07182b;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }
        .btn-submit:hover { box-shadow: 0 0 25px rgba(230,189,97,0.45); transform: translateY(-2px); }

        .forgot-link {
            display: block;
            width: 100%;
            text-align: center;
            margin-top: 18px;
            background: transparent;
            border: none;
            color: #b9c6d8;
            font-size: 13px;
            cursor: pointer;
            text-decoration: underline;
        }
        .forgot-link:hover { color: #e6bd61; }

        .back-home {
            display: block;
            text-align: center;
            margin-top: 25px;
            color: #91a2b8;
            font-size: 12px;
            text-decoration: none;
        }
        .back-home:hover { color: #e6bd61; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-card">
            <h1>CP<span>C</span></h1>
            <div class="subtitle">Login to Your Account</div>

            <div class="field-group">
                <asp:Label runat="server" CssClass="field-label" Text="Username or Email" AssociatedControlID="txtUsername" />
                <asp:TextBox ID="txtUsername" runat="server" CssClass="field-input" placeholder="Enter username or email" />
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" CssClass="field-error" ErrorMessage="You must enter a username or email" Display="Dynamic" />
            </div>

            <div class="field-group">
                <asp:Label runat="server" CssClass="field-label" Text="Password" AssociatedControlID="txtPassword" />
                <asp:TextBox ID="txtPassword" runat="server" CssClass="field-input" TextMode="Password" placeholder="Enter password" />
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" CssClass="field-error" ErrorMessage="You must enter a password" Display="Dynamic" />
            </div>

            <asp:Button ID="btnLogin" runat="server" CssClass="btn-submit" Text="Login" OnClick="btnLogin_Click" />

            <asp:LinkButton ID="lnkForgotPassword" runat="server" CssClass="forgot-link" Text="Do You Forget Password?" OnClick="lnkForgotPassword_Click" />

            <asp:Label ID="lblResult" runat="server" ForeColor="#ff8080" Style="display:block;text-align:center;margin-top:15px;font-size:13px;" />

            <a href="Home.aspx" class="back-home">&#8592;   Back to Home</a>
        </div>
    </form>
</body>
</html>