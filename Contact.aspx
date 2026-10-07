<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="JoinEmp.Contact" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Contact Us - CPC</title>
    <meta charset="utf-8" />
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            background: #06172c;
            font-family: Arial, sans-serif;
            color: #d9e1ee;
            min-height: 100vh;
            position: relative;
            overflow-x: hidden;
        }

        .glow-blue {
            position: absolute;
            top: -150px;
            left: -150px;
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, rgba(60,110,180,0.25), transparent 70%);
            border-radius: 50%;
            z-index: 0;
        }

        .glow-gold {
            position: absolute;
            bottom: -200px;
            right: -200px;
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, rgba(230,189,97,0.15), transparent 70%);
            border-radius: 50%;
            z-index: 0;
        }

        .navbar {
            position: relative;
            z-index: 5;
            height: 90px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 6%;
            border-bottom: 1px solid rgba(255,255,255,0.12);
            background: rgba(5, 20, 40, 0.30);
            backdrop-filter: blur(10px);
        }

        .logo-text { font-size: 24px; font-weight: bold; letter-spacing: 1px; }
        .logo-text span { color: #e6bd61; }

        .nav-links { display: flex; gap: 45px; }
        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            position: relative;
            transition: 0.3s;
        }
        .nav-links a:hover { color: #e6bd61; }
        .nav-links a.active { color: #e6bd61; }
        .nav-links a.active::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: -10px;
            width: 100%;
            height: 2px;
            background: #e6bd61;
        }

        .tagline {
            display: flex;
            align-items: center;
            gap: 16px;
            font-size: 13px;
            font-style: italic;
            color: #c9d4e3;
            line-height: 1.35;
            text-align: left;
        }
        .tagline .divider {
            width: 1px;
            height: 34px;
            background: rgba(230, 189, 97, 0.6);
        }

        .contact-wrap {
            position: relative;
            z-index: 2;
            max-width: 1000px;
            margin: 0 auto;
            padding: 80px 20px 100px;
            text-align: center;
        }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            color: #e6bd61;
            font-size: 13px;
            letter-spacing: 3px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .eyebrow .line { width: 30px; height: 1px; background: #e6bd61; }

        .contact-wrap h1 {
            font-size: 40px;
            color: #fff;
            margin-bottom: 15px;
        }

        .contact-wrap p.sub {
            color: #b9c6d8;
            font-size: 15px;
            max-width: 550px;
            margin: 0 auto 50px;
            line-height: 1.7;
        }

        .contact-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 25px;
            margin-top: 20px;
        }

        .contact-card {
            background: rgba(255,255,255,0.04);
            border: 1px solid rgba(230,189,97,0.25);
            border-radius: 16px;
            padding: 35px 20px;
            text-decoration: none;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 12px;
            cursor: pointer;
            transition: 0.3s;
        }
        .contact-card:hover {
            transform: translateY(-8px);
            border-color: #e6bd61;
            box-shadow: 0 10px 30px rgba(230,189,97,0.15);
        }

        .contact-icon {
            width: 58px;
            height: 58px;
            border-radius: 50%;
            background: linear-gradient(135deg, #f4d37f, #d9a93d);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            font-weight: bold;
            color: #06172c;
        }

        .contact-platform { font-size: 17px; font-weight: bold; color: #fff; }
        .contact-handle { font-size: 13px; color: #91a2b8; }

        .verified-badge {
            display: inline-flex;
            align-items: center;
            gap: 5px;
            font-size: 11px;
            color: #e6bd61;
            font-weight: bold;
            margin-top: 2px;
        }

        .disclaimer {
            margin-top: 50px;
            font-size: 12px;
            color: #91a2b8;
            font-style: italic;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="glow-blue"></div>
        <div class="glow-gold"></div>

        <nav class="navbar">
            <div class="logo-text">CP<span>C</span></div>
            <div class="nav-links">
                <a href="Home.aspx">Home</a>
                <a href="About Us.aspx">About Us</a>   
                <a href="Contact.aspx" class="active">Contact</a>
                <a href="Careers.aspx">Careers</a>
                </div>
            <div class="tagline">
                <div class="divider"></div>
                <div>Connecting Talent<br />with Opportunity</div>
            </div>
        </nav>

        <div class="contact-wrap">
            <div class="eyebrow"><span class="line"></span>GET IN TOUCH<span class="line"></span></div>
            <h1>Let's <span style="color:#e6bd61;">Connect</span></h1>
            <p class="sub">
                If any student would like to connect with me for assistance, collaboration, 
                or just to get in touch, feel free to visit my social media pages linked below.
                This was my final project for CS50, presented by your classmate, Abdulrahman. 
                Thank you for watching!
            </p>

            <div class="contact-grid">
                <a class="contact-card" href="https://instagram.com/a.ra7man.m" target="_blank">
                    <div class="contact-icon">IG</div>
                    <div class="contact-platform">Instagram</div>
                    <div class="contact-handle">@a.ra7man.m</div>
                </a>

                <div class="contact-card" onclick="copyText('a.elalphy')">
                    <div class="contact-icon">DC</div>
                    <div class="contact-platform">Discord</div>
                    <div class="contact-handle">a.elalphy (click to copy)</div>
                </div>

                <a class="contact-card" href="https://t.me/AbdoAlphy" target="_blank">
                    <div class="contact-icon">TG</div>
                    <div class="contact-platform">Telegram</div>
                    <div class="contact-handle">@AbdoAlphy</div>
                </a>

                <a class="contact-card" href="https://www.linkedin.com/in/abdulrahman-abdelfadil-b57295322" target="_blank">
                    <div class="contact-icon">IN</div>
                    <div class="contact-platform">LinkedIn</div>
                    <div class="contact-handle">Abdulrahman Abdelfadil</div>
                    <div class="verified-badge">✔ My one and only official account</div>
                </a>
            </div>

            <p class="disclaimer">
                Please do not trust any other profile claiming to be me on these platforms.
            </p>
        </div>

        <script>
            // @ts-nocheck
            function copyText(text) {
                navigator.clipboard.writeText(text).then(function () {
                    alert("Copied to clipboard: " + text);
                });
            }
        </script>
    </form>
</body>
</html>