<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <html lang="en">
        <html>

        <head>
            <script src="index.js"></script>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <!-- boot -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>
            <!--  -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
            <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"
                integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
            <style>
                body {
                    background-image: url('./image/blue.jpg');
                }

                body {
                    font-family: Arial
                }

                * {
                    box-sizing: border-box;
                }

                /* The browser window */
                .container {
                    border: 3px solid #f1f1f1;
                    border-top-left-radius: 4px;
                    border-top-right-radius: 4px;
                }

                /* Container for columns and the top "toolbar" */
                .row {
                    padding: 10px;
                    background: #83c6fd;
                    border-top-left-radius: 4px;
                    border-top-right-radius: 4px;
                }

                /* Create three unequal columns that floats next to each other */
                .column {
                    float: left;
                }

                .left {
                    width: 15%;
                }

                .right {
                    width: 10%;
                }

                .middle {
                    width: 75%;
                }

                /* Clear floats after the columns */
                .row:after {
                    content: "";
                    display: table;
                    clear: both;
                }

                /* Three dots */
                .dot {
                    margin-top: 1px;
                    height: 12px;
                    width: 12px;
                    background-color: rgb(34, 30, 30);
                    border-radius: 50%;
                    display: inline-block;
                }

                /* Style the input field */
                input[type=text] {
                    width: 100%;
                    border-radius: 3px;
                    border: none;
                    background-color: white;
                    margin-top: 7px;
                    height: 30px;
                    color: rgb(248, 247, 247);
                    padding: 7px;
                }

                /* Three bars (hamburger menu) */
                .bar {
                    width: 17px;
                    height: 3px;
                    background-color: rgb(172, 229, 243);
                    margin: 3px 0;
                    display: block;
                }

                /* Page content */
                .content {
                    padding: 700px;
                }

                body {
                    font-family: Arial, Helvetica, sans-serif;
                }

                * {
                    box-sizing: border-box;
                }

                /* Create a column layout with Flexbox */
                .row {
                    display: flex;
                }

                /* Left column (menu) */
                .left {
                    flex: 35%;
                    padding: 15px 0;
                }

                .left h2 {
                    padding-left: 8px;
                }

                /* Right column (page content) */
                .right {
                    flex: 65%;
                    padding: 15px;
                }

                /* Style the search box */
                #mySearch {
                    width: 100%;
                    font-size: 18px;
                    padding: 11px;
                    border: 1px solid rgb(24, 23, 23);
                }

                /* Style the navigation menu inside the left column */
                #myMenu {
                    list-style-type: none;
                    padding: 0;
                    margin: 0;
                }

                #myMenu li a {
                    padding: 12px;
                    text-decoration: none;
                    color: rgb(253, 252, 252);
                    display: block
                }

                #myMenu li a:hover {
                    background-color: rgb(61, 61, 61);
                }

                /* Make the image fully responsive */
                .carousel-inner img {
                    width: 100%;
                    height: 100%;
                }
            </style>
        </head>

        <body style="background-color:rgb(236, 228, 228);">

            <div class="container">
                <div class="row">
                    <div class="column left">
                        <span class="dot" style="background:#ED594A;"></span>
                        <span class="dot" style="background:#FDD800;"></span>
                        <span class="dot" style="background:#5AC05A;"></span>
                    </div>
                    <div class="column middle">
                        <!-- <input type="text" value="Search">
                <br>
                <br>
                <br>
                <br> -->
                        <div class="row">
                            <div class="left" style="background-color:#83c6fd;">
                                <h2>Categories</h2>
                                <!-- <input type="text" id="mySearch" onkeyup="myFunction()" placeholder="Search.."
                            title="Type in a category"> -->
                                <ul id="myMenu">
                                    <!-- Button trigger modal -->
                                    <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
    Launch static backdrop modal
  </button> -->
                                    <li><a href="javascript:dataByCategory()" data-bs-toggle="modal"
                                            data-bs-target="#staticBackdrop" onclick="getmodel()">Restaurant</a></li>
                                    <!-- Modal -->
                                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
                                        data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel"
                                        aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="staticBackdropLabel">CafeTeen</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <input type="text" id="modelin">
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Close</button>
                                                    <!-- <button type="button" class="btn btn-primary"></button> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <li><a href="#">Dental Hospital</a></li>
                                    <li><a href="#">Car Dealer</a></li>
                                    <li><a href="#">Online Reservation</a></li>
                                    <li><a href="#">Medicals</a></li>
                                    <li><a href="#">Milky Products</a></li>
                                    <li><a href="#">Decor</a></li>
                                    <li><a href="#">Salon</a></li>
                                </ul>
                            </div>
                            <div class="right" style="background-color:#83c6fd;">
                                <div id="demo" class="carousel slide" data-ride="carousel">
                                    <ul class="carousel-indicators">
                                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                                        <li data-target="#demo" data-slide-to="1"></li>
                                        <li data-target="#demo" data-slide-to="2"></li>
                                    </ul>

                                    <!-- The slideshow -->
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img src="./image/cafeRes.jpg" alt="cafeRes" width="1100" height="500">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="./image/dental.jpg" alt="dental" width="1100" height="500">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="./image/car dealer.jpg" alt="car dealer" width="1100"
                                                height="500">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="./image/Booking.jpg" alt="Booking" width="1100" height="500">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="./image/Medicals.jpg" alt="Medicals" width="1100" height="500">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="./image/dialyneedmilk.jpg" alt="dialyneedmilk" width="1100"
                                                height="500">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="./image/Decor.jpg" alt="Decor" width="1500" height="500">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="./image/beautysalon.jpg" alt="beautysalon" width="1100"
                                                height="500">
                                        </div>

                                    </div>

                                    <!-- Left and right controls -->
                                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                        <span class="carousel-control-prev-icon"></span>
                                    </a>
                                    <a class="carousel-control-next" href="#demo" data-slide="next">
                                        <span class="carousel-control-next-icon"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <script>
                            function myFunction() {
                                var input, filter, ul, li, a, i;
                                input = document.getElementById("mySearch");
                                filter = input.value.toUpperCase();
                                ul = document.getElementById("myMenu");
                                li = ul.getElementsByTagName("li");
                                for (i = 0; i < li.length; i++) {
                                    a = li[i].getElementsByTagName("a")[0];
                                    if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                        li[i].style.display = "";
                                    } else {
                                        li[i].style.display = "none";
                                    }
                                }
                            }
                        </script>
                    </div>
                    <!-- <div class="column right">
                <div style="float:right">
                    <span class="bar"></span>
                    <span class="bar"></span>
                    <span class="bar"></span>
                </div>
            </div> -->
                </div>

                <div class="content">
                    <!-- <h3>Categories</h3>
          <p>""</p> -->
                </div>
            </div>
            <div id="demo" class="carousel slide" data-ride="carousel">

                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>
                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>

            <!-- <center> <input type="text" placeholder="What You Are Looking for?"></center> -->
            <!-- <option value="none" selected disabled hidden>What You Are Looking for?</option> -->

        </body>

        </html>