<%-- 
    Document   : admin
    Created on : Jun 13, 2023, 10:58:04 PM
    Author     : EZIRA SUTUAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BMSJAVA.StoreTeller" %>
<%@page import="BMSJAVA.UserLogin" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="loginObject" class="BMSJAVA.UserLogin" />
<jsp:useBean id="teller" class="BMSJAVA.Teller" scope="session" />
<jsp:useBean id="storeTellerObject" class="BMSJAVA.StoreTeller" scope="session" />
<jsp:setProperty name="teller" property="*" ></jsp:setProperty>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Responsive Virtual Bank Website</title>

    <!-- Linking CSS File  -->
    <link rel="stylesheet" href="css/mainpageStyle.css" />

    <!-- Bootstrap CSS  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />

    <!-- Fontawesome Icons  -->
    <script src="https://kit.fontawesome.com/7433d3320f.js" crossorigin="anonymous"></script>
    <link rel="icon" href="assets/images/bank.png" type="image/x-icon">
</head>

<body data-bs-spy="scroll" data-bs-target="#navbarSupportedContent">
    <header>
        <!-- Navbar Section  -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">MegaCash</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="#teller">Teller Information</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#user">User Information</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#createAcc">Create Account</a>
                        </li>

                    </ul>
                    <button onclick="window.location.href='html/index.html'" class="btn btn-success text-dark"
                        type="submit" id="abc">
                        Log out
                    </button>
                    <!--back end needed to fetch the image--><img class="user-icon" src="assets/images/avatar3.png"
                        alt="">
                    <div class="account-info"><!--back end needed to fetch this-->
                        <p>name of the account holder</p>
                        <p>Email: name@gmail.com</p>
                        <p>Location: bahirdar</p>
                    </div>
                </div>
            </div>
        </nav>



        <!-- intro Section  -->
        <div class="mid">
            <div class="hero text-center">

                <h2 class=" display-4 fw-bold" style="color: #00bf7f;">
                    MegaCash Bank
                </h2>
                <p class=" mx-auto" style="color: rgb(192, 191, 191);">
                    Welcome to MegaCash Bank, where banking ain't no joke. We're talking top-notch security, convenience
                    like you've never seen.
                </p>

            </div>
        </div>
    </header>

    <!-- Teller info Section  -->
    <section id="teller" class="about py-3">
        <div class="row align-items-center container my-3 mx-auto">
            <!-- Left Side Content Area  -->
            <div class="text col-lg-6 col-md-6 col-12 pt-5 pb-5">
                <h6>Teller Information</h6>
                <h2>We have and still are building big family</h2>
                <p>
                    search from our hundreds of tellers.
                </p>
                <input type="text" name="search" id="search" >
               <button class="submit-btn1" onclick="window.location.href='#teller-info'">search</button>
            </div>
            <!-- Right Side Image Area  -->
            <div class="img col-lg-6 col-md-6 col-12 pt-5 pb-5">
                <img class="img-fluid" src="assets/images/1.svg" />
            </div>
        </div>
        <div id="teller-info" class="teller-info">
            <form action="" class="form">
                <h2>Teller Information</h2>
                
                <table>
                    <tr>
                      <th>First Name</th>
                      <th>Last Name</th>
                      <th>Gender</th>
                      <th>Username</th>
                      <th>Password</th>
                      <th>Email</th>
                      <th>Registration Date</th>
                      <th>Phone</th>
                    </tr>
                    <!--....back end needed.....-->
                <% ResultSet result = storeTellerObject.getTellers(); %>
                    <% while (result.next()) { %>
                    <tr>
                    <td><%= result.getString("first_name") %></td>
                    <td><%= result.getString("last_name") %></td>
                    <td><%= result.getString("gender") %></td>
                    <td><%= result.getString("user_name") %></td>
                    <td><%= result.getString("password") %></td>
                    <td><%= result.getString("email") %></td>
                    <td><%= result.getString("registration_date") %></td>
                    <td><%= result.getString("phone") %></td>
                    </tr>
                    <% } %>
                    <!--....back end needed.....-->
                    
                  </table>
                  <button class="ok" onclick="window.location.href='#'">OK</button>
                <a href="#" class="close-button">&times;</a>
            </form>


        </div>

    </section>





    <!-- user info Section  -->
    <section id="user" class="discover py-3">
        <div class="row align-items-center container my-3 mx-auto">
            <!-- Left Side Content Area  -->
            <div class="img col-lg-6 col-md-6 col-12 pt-5 pb-5">
                <img class="img-fluid" src="assets/images/2.png" />
            </div>
            <!-- Right Side Image Area  -->
            <div class="text col-lg-6 col-md-6 col-12 pt-5 pb-5">
                <h6>Customer Information</h6>
                <h2>We invest on people not properties</h2>
                <p>
                    You can now take a look at our customer transactions!
                </p>
                <input type="text" name="search" id="search" >
                <button class="submit-btn1" onclick="window.location.href='#user-info-wrapper'">search</button>
             </div>
            </div>
        
        <div id="user-info-wrapper" class="transaction-wrapper">
            <form action="" class="form">
                <h1>Transcations</h1>
                <table>
                    <tr>
                      <th>First Name</th>
                      <th>Last Name</th>
                      <th>Gender</th>
                      <th>Username</th>
                      <th>Password</th>
                      <th>Account Number</th>
                      <th>Balance</th>
                      <th>Phone</th>
                      <th>Email</th>
                      <th>Registration Date</th>
                      <th>Teller ID</th>
                    </tr>
                     <!--....back end needed.....-->
                    <tr>
                      <td>Elias</td>
                      <td>Tadesse</td>
                      <td>Male</td>
                      <td>elias123</td>
                      <td>********</td>
                      <td>123456789</td>
                      <td>$5000</td>
                      <td>1234567890</td>
                      <td>elias@example.com</td>
                      <td>2023-06-10</td>
                      <td><img src="assets/images/1.png" alt="User Photo" width="100" height="100"></td>
                      <td>Teller 1</td>
                    </tr>
                    
                     <!--....back end needed.....-->
                  </table>
                <button class="ok" onclick="window.location.href='#'">OK</button>
                <a href="#" class="close-button">&times;</a>
            </form>


        </div>
    </section>

    <!-- account creation Section  -->
    <section id="createAcc" class="service py-2 pb-5">
        <div class="col mx-auto align-items-center my-2">
            <!-- Heading  -->
            <div class="heading text-center pt-5">
                <h2 class="fw-bolder pb-4 text-light">Create Account</h2>
            </div>
            <div class="row mx-auto justify-content-center align-items-center text-center container">
                <!-- back end nedded here replace the images and other extras like name-->
                <div class="card col-lg-3 col-md-3 col-12 m-2">
                    <img class="img-fluid w-75" src="assets/images/1.svg" />
                    <h5 class="fw-bold pt-4">Create Customer Account</h5>
                    <p>
                        click below to create a new customer account
                    </p>
                    <button onclick="window.location.href='#user-acc-wrapper'" class="submit-btn" >Create</button>
                </div>
                <div class="card col-lg-3 col-md-3 col-12 m-2">
                    <img class="img-fluid w-75" src="assets/images/3.png" />
                    <h5 class="fw-bold pt-4">Create Teller Account</h5>
                    <p>
                        Well coming new member to our big family
                    </p>
                    <button onclick="window.location.href='#teller-acc-wrapper'" class="submit-btn" >Create</button>
                </div>

            </div>
        </div>
        <div id="user-acc-wrapper" class="transfer-wrapper">
            <form action="storeUser.jsp" class="form">
                <h2>New User Account</h2>
                <div class="input-group">
                    <input type="text" name="firstName" id="FirstName" class="a" required>
                    <label for="FirstName">First Name</label>
                </div>
                <div class="input-group">
                    <input type="text" name="secondName" id="LastName" class="a" required>
                    <label for="LastName">Last Name</label>
                </div>
                <div class="input-group">
                    <input type="text" name="accountNumber" id="AccountNumber" class="a" required>
                    <label for="AccountNumber">Account Number</label>
                </div>
                <div class="input-group">
                    <input type="text" name="gender" id="Gender" class="a" required>
                    <label for="Gender">Gender</label>
                </div>
                <div class="input-group">
                    <input type="text" name="email" id="Email" class="a" required>
                    <label for="Email">Email</label>
                </div>
                <div class="input-group">
                    <input type="text" name="phoneNumber" id="PhoneNumber" class="a" required>
                    <label for="PhoneNumber">Phone Number</label>
                </div>
                
                <div class="input-group">
                    <input type="number" name="balance" id="InitialBalance" class="a" required>
                    <label for="InitialBalance">Initial Balance</label>
                </div>
                <div class="input-group">
                    <input type="text" name="username" id="UserName" required>
                    <label for="UserName">User Name</label>
                </div>
                <div class="input-group">
                    <input type="password" name="password" id="Password" class="a" required>
                    <label for="Password">Password</label>
                </div>
                <button class="submit-btn">Create</button>
                <a href="#" class="close-button">&times;</a>
            </form>


        </div>
        <div id="teller-acc-wrapper" class="transfer-wrapper">
            <form action="storeTeller.jsp"  mathod="post" class="form">
                <h2>New Teller Account</h2>
                <div class="input-group">
                    <input type="text" name="tellerID" id="FirstName" class="a" required>
                    <label for="firstName">Teller ID</label>
                </div>
                <div class="input-group">
                    <input type="text" name="firstName" id="FirstName" class="a" required>
                    <label for="firstName">First Name</label>
                </div>
                <div class="input-group">
                    <input type="text" name="secondName" id="LastName" class="a" required>
                    <label for="secondName">Last Name</label>
                </div>
                <div class="input-group">
                    <input type="text" name="gender" id="Gender" class="a" required>
                    <label for="gender">Gender</label>
                </div>
                <div class="input-group">
                    <input type="text" name="email" id="email" class="a" required>
                    <label for="email">Email</label>
                </div>
                <div class="input-group">
                    <input type="text" name="phoneNumber" id="phoneNumber" class="a" required>
                    <label for="PhoneNumber">Phone Number</label>
                </div>
                <div class="input-group">
                    <input type="text" name="username" id="UserName" required>
                    <label for="UserName">User Name</label>
                </div>
                <div class="input-group">
                    <input type="password" name="password" id="Password" class="a" required>
                    <label for="Password">Password</label>
                </div>
                <button class="submit-btn">Create</button>
                <a href="#" class="close-button">&times;</a>
            </form>


        </div>
    </section>
    <!-- Footer Section  -->
    <footer class="bg-dark text-center text-white" style="height: 100px;">
        <!-- Grid container -->
        <div class="container p-4 pb-0">
            <!-- Section: Social media -->
            <section class="mb-4">
                <!-- Facebook -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i
                        class="fab fa-facebook-f"></i></a>

                <!-- Twitter -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i
                        class="fab fa-twitter"></i></a>

                <!-- Instagram -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i
                        class="fab fa-instagram"></i></a>
            </section>
            <!-- Section: Social media -->
        </div>
        <!-- Grid container -->

    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>
</body>

</html>