<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
        <style type="text/css">
    <%@ include file="/Styling/style.css" %>
	<%@ include file="/Styling/responsive.css"%>
	
        .main_container {
    margin:0px 0px 0px 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 90vw;
}
        .sub-containers {
    background-color: white;
    display: inline-block;
    /* margin: 0px 0px 0px 10px; */
    padding: 10px;
    /* border: 2px solid black; */
    border-radius: 10px;
    height: 60vh;
    width: 40vw;
    box-shadow: 5px 8px 8px 8px #6e6e6e7d;
}

        .picture {
    margin: 10px;
    width: 200px;
    height: 200px;
    border: 2px solid black;
    border-radius: 100px;
    object-fit: cover;
    object-position: center;
    box-shadow: 4px 4px 10px 7px #bbbbbbb8;
}
.sub-containers p {
    font-family: 'Merriweather', serif;
    text-align:justify;
    font-size: large;
    font-weight: bold;
    margin: 10px 0px 10px 0px;
}
    </style>
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="../home.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">View</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h1>Contact</h1>
        <div class="main_container">
            
            <div class="sub-containers">
                <img class="picture" src="../images/img1.jpeg" alt="Education" width="200px">
                <p>Hello users this is our about section. I am a software developer and created this website to securely keep the data of the user online</p>
                
                
                <p>Thanking you for showing interest in seeing about us. Following is our social media where you can find more about us</p>
                <a href="#">Instagram</a>
                <a href="#">Youtube</a>
                
            </div>
        </div>
    </main>
    <footer class="flex-all-centre">
        <p>Copyright &copy; All rights Reserved to Alok</p>
    </footer>
</body>
</html>