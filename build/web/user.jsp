<%-- 
    Document   : user
    Created on : Jun 13, 2023, 9:06:39 PM
    Author     : EZIRA SUTUAL
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BMSJAVA.StoreUser" %>
<%@page import="BMSJAVA.TransferBean" %>
<%@page import="BMSJAVA.Customer" %>
<%@page import="java.sql.*" %>
<jsp:useBean id="customer" class="BMSJAVA.Customer" scope="session" />
<jsp:useBean id="transferBean" class="BMSJAVA.TransferBean" scope="session" />
<jsp:useBean id="manageUserAccount" class="BMSJAVA.ManageUserAccount" scope="session" />
<jsp:useBean id="storeUserObject" class="BMSJAVA.StoreUser" scope="session" />
<jsp:setProperty name="transferBean" property="*" ></jsp:setProperty><!DOCTYPE html>
<%
    HttpSession sessions = request.getSession();
    // Rest of your code...
%>
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
                            <a class="nav-link" href="#transfer">Transfer</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#chktrans">Check Transaction</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#balchk">Balance Check</a>
                        </li>

                    </ul>
                    <button onclick="window.location.href='index.html'" class="btn btn-success text-dark"
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
                    <% customer = (Customer) sessions.getAttribute("customer"); %>
                    Welcome  <%= customer.getFirstName() %> to MegaCash Bank, where banking ain't no joke. We're talking top-notch security, convenience
                    like you've never seen.
                </p>

            </div>
        </div>
    </header>

    <!-- TRANSFER Section  -->
    <section id="transfer" class="about py-3">
        <div class="row align-items-center container my-3 mx-auto">
            <!-- Left Side Content Area  -->
            <div class="text col-lg-6 col-md-6 col-12 pt-5 pb-5">
                <h6>PREMIUM BANK</h6>
                <h2>Unlimited Transaction with zero fees</h2>
                <p>
                    Unlock Financial Freedom: Seamlessly Conduct Unlimited Transactions with Zero Fees at Your
                    Fingertips!
                </p>
                <a href="#transfer-wrapper">TRANSFER NOW</a>
            </div>
            <!-- Right Side Image Area  -->
            <div class="img col-lg-6 col-md-6 col-12 pt-5 pb-5">
                <img class="img-fluid" src="assets/images/1.svg" />
            </div>
        </div>
     
        <div id="transfer-wrapper" class="transfer-wrapper">
            <form action="transfer.jsp" class="form">
                <h2>Transfer</h2>
                <div class="input-group">
                    <input type="text" name="destination" id="loginUser" class="a" required>
                    <label for="loginUser">Account Number</label>
                </div>
                <div class="input-group">
                    <input type="text" name="amount" id="amount" required>
                    <label for="amount">Amount</label>
                </div>
                 <div class="input-group">
                    <input type="hidden" name="source" id="amount"  value="<%= customer.getCustomerID() %>">
                    <label for="amount">Amount</label>
                </div>
                <button class="submit-btn">Send</button>
                <a href="#" class="close-button">&times;</a>
            </form>


        </div>

    </section>





    <!-- TRANSACTION Section  -->
    <section id="chktrans" class="discover py-3">
        <div class="row align-items-center container my-3 mx-auto">
            <!-- Left Side Content Area  -->
            <div class="img col-lg-6 col-md-6 col-12 pt-5 pb-5">
                <img class="img-fluid" src="assets/images/2.png" />
            </div>
            <!-- Right Side Image Area  -->
            <div class="text col-lg-6 col-md-6 col-12 pt-5 pb-5">
                <h6>UNLIMITED ACCESS</h6>
                <h2>Login to your account at any time</h2>
                <p>
                    24/7 Access: Login to Your Account Anytime, Anywhere and Take Control of Your Finances!"
                </p>
                <a href="#transaction-wrapper">Past Transaction</a>
            </div>
        </div>
        <div id="transaction-wrapper" class="transaction-wrapper">
            <form action="" class="form">
                <h1>Transcations</h1>
                <table>
                    <tr>
                        <th>Date</th>
                        <th>Amount</th>
                        <th>Transaction Type</th>
                        <th>Destination</th>
                        <th>Source</th>
                        <th>Transaction ID</th>
                    </tr>
                    <!--....back end needed.....-->
                <% ResultSet  result = manageUserAccount.getTransaction(customer.getCustomerID()); %>
                <% while(result.next()) { %>
                    <tr>
                        <td> <%= result.getString(2) %></td>
                        <td> <%= result.getString(3) %></td>
                        <td> <%= result.getString(4) %></td>
                        <td> <%= result.getString(5) %></td>
                        <td> <%= result.getString(6) %></td>
                        <td> <%= result.getString(1) %></td>
                        <td> <%= result.getString(7) %></td>
                       
                    </tr>
                    <% } %>
                    <!--....back end needed.....-->
                </table>
                <button class="ok" onclick="window.location.href='#'">OK</button>
                <a href="#" class="close-button">&times;</a>
            </form>


        </div>
    </section>

    <!-- Balance Section  -->
    <section id="balchk" class="service py-2 pb-5">
        <div class="col mx-auto align-items-center my-2">
            <!-- Heading  -->
            <div class="heading text-center pt-5">
                <h2 class="fw-bolder pb-4 text-light">Your Account</h2>
            </div>
            <div class="row mx-auto justify-content-center align-items-center text-center container">
                <!-- back end nedded here replace the images and other extras like name-->
                <div class="card col-lg-3 col-md-3 col-12 m-2">
                    <img class="img-fluid w-75" src="assets/images/2.png" />
                    <!--this shouldbe the image of the owner -->
                    <h5 class="fw-bold pt-4">name of the owner </h5> <!--this shouldbe the name of the owner -->
                    <p>
                        Account Number :
                    </p>
                    <p>
                        1000930000
                    </p>
                    <p>
                        Account Balance :    Your current balance is    234
                    </p>
                    <p>
                    </p>
                </div>

            </div>
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