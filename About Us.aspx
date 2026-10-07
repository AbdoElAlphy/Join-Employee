<%@ Page Title="About Us" Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="JoinEmp.About_Us" ResponseEncoding="utf-8" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>About Us - CPC</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        html, body { width: 100%; min-height: 100%; }

        body {
            font-family: Arial, sans-serif;
            background: #06172c;
            color: white;
            position: relative;
            overflow-x: hidden;
        }

        /*   Background glow (same vibe as Home)  */
        .glow-blue {
            position: fixed;
            width: 650px; height: 650px;
            top: -150px; left: -150px;
            background: radial-gradient(circle, rgba(40,120,220,0.18) 0%, transparent 70%);
            filter: blur(40px);
            z-index: 0;
            pointer-events: none;
        }
        .glow-gold {
            position: fixed;
            width: 500px; height: 500px;
            bottom: -150px; right: -100px;
            background: radial-gradient(circle, rgba(235,190,80,0.15) 0%, transparent 70%);
            filter: blur(40px);
            z-index: 0;
            pointer-events: none;
        }

        /* Navbar */
        .navbar {
            position: relative; z-index: 5;
            height: 90px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 6%;
            border-bottom: 1px solid rgba(255,255,255,0.12);
            background: rgba(5, 20, 40, 0.30);
            backdrop-filter: blur(10px);
        }
        .logo-text {
            font-size: 24px;
            font-weight: bold;
            letter-spacing: 1px;
        }
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
            left: 0; bottom: -10px;
            width: 100%; height: 2px;
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
        /* About section */
        .about-wrap {
            position: relative; z-index: 5;
            max-width: 1200px;
            margin: 0 auto;
            padding: 90px 6% 110px;
            display: grid;
            grid-template-columns: 1.3fr 0.9fr;
            gap: 70px;
            align-items: center;
        }

        .eyebrow {
            display: inline-block;
            color: #e6bd61;
            font-size: 14px;
            font-weight: bold;
            letter-spacing: 3px;
            text-transform: uppercase;
            margin-bottom: 18px;
        }

        .about-wrap h1 {
            font-size: 42px;
            line-height: 1.25;
            margin-bottom: 26px;
        }
        .about-wrap h1 span { color: #e6bd61; }

        .about-wrap p {
            color: #c2cfe0;
            font-size: 16.5px;
            line-height: 1.9;
            margin-bottom: 22px;
            max-width: 580px;
        }

        .divider {
            width: 70px;
            height: 3px;
            background: #e6bd61;
            margin-bottom: 24px;
            border-radius: 2px;
        }

        /* Stat card with rotating ring */
        .stat-side {
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            height: 340px;
        }

        .ring {
            position: absolute;
            width: 300px; height: 300px;
            border-radius: 50%;
            border: 1px solid rgba(230,189,97,0.25);
            animation: spin 20s linear infinite;
        }
        .ring::after {
            content: "";
            position: absolute; inset: 0;
            border-radius: 50%;
            background: conic-gradient(from 0deg, transparent 0%, #e6bd61 8%, transparent 20%);
            -webkit-mask: radial-gradient(farthest-side, transparent calc(100% - 2px), #000 calc(100% - 2px));
            mask: radial-gradient(farthest-side, transparent calc(100% - 2px), #000 calc(100% - 2px));
        }
        @keyframes spin { to { transform: rotate(360deg); } }

        .stat-card {
            position: relative;
            z-index: 2;
            width: 240px;
            padding: 40px 25px;
            text-align: center;
            background: rgba(10, 28, 52, 0.75);
            border: 1px solid rgba(230,189,97,0.35);
            border-radius: 16px;
            box-shadow: 0 0 40px rgba(0,0,0,0.4);
            backdrop-filter: blur(6px);
        }

        .stat-number {
            font-size: 52px;
            font-weight: bold;
            color: #e6bd61;
            line-height: 1;
            margin-bottom: 10px;
        }
        .stat-label {
            font-size: 14px;
            color: #d9e1ee;
            letter-spacing: 0.5px;
        }

        /*  Responsive  */
        @media (max-width: 900px) {
            .about-wrap { grid-template-columns: 1fr; padding-top: 60px; }
            .stat-side { height: 260px; margin-top: 20px; }
            .about-wrap h1 { font-size: 32px; }
        }
        @media (max-width: 600px) {
            .nav-links { display: none; }
        }
    </style>
</head>
<body>

    <div class="glow-blue"></div>
    <div class="glow-gold"></div>

    <form id="form1" runat="server">

        <nav class="navbar">
    <div class="logo-text">CP<span>C</span></div>
    <div class="nav-links">
        <a href="Home.aspx">Home</a>
        <a href="About Us.aspx" class="active">About Us</a>
        <a href="Contact.aspx">Contact</a>
        <a href="Careers.aspx">Careers</a>
    </div>
    <div class="tagline">
        <div class="divider"></div>
        <div>Connecting Talent<br />with Opportunity</div>
    </div>
</nav>
        

        <section class="about-wrap">
            <div>
                <span class="eyebrow">Who We Are</span>
                <div class="divider"></div>
                <h1>Building the Future of <span>Real Estate</span></h1>

                <p>
                    We are pioneers in real estate development and the construction
                    of integrated systems in line with the highest global standards.
                    We believe that true architecture combines structural strength
                    with technological innovation, which is why we deliver
                    sustainable real estate solutions that meet our clients'
                    aspirations and keep pace with global progress.
                </p>

                <p>
                    Thanks to our forward-looking vision and international presence
                    across more than 20 branches worldwide, we put our global
                    expertise in your hands to create work and living environments
                    defined by luxury, quality, and reliability.
                </p>
    
            </div>

            <div class="stat-side">
                <div class="ring"></div>
                <div class="stat-card">
                    <div class="stat-number">20+</div>
                    <div class="stat-label">International Branches Worldwide</div>
                </div>
            </div>
        </section>

    </form>
</body>
</html>