<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Logout With Session Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <title>JUSTDIAL</title>
    <!-- <h2 style="text-align:center"><b>SIGNIN</b></h2> -->
    <style>
        .divider:after,
        .divider:before {
            content: "";
            flex: 1;
            height: 1px;
            background: #eee;
        }

        body {
            background-image: url('3294932.webp');
            background-size: cover;
            /* align-items: center;
            justify-content: center;
            display: flex; */
            padding: 0;
            margin: 0;
        }
        #divbar{
            width: 300px;
            height: 270px;
            /* background: 120deg blue,black; */
            background:linear-gradient(120deg,rgba(11, 11, 90, 0.596), rgba(0, 0, 0, 0.63));
            margin-top: 8%;
            border-radius: 8px;
            align-items: center;
            justify-content: center;
            display: flex;
            border: 1px solid white;
            margin-left: 40%;
        }
        #ipt{
            width: 90%;
            padding: 10px;
        
        }
        #btn{
            border: none;
            background-color: rgb(109, 195, 221);
            padding-left: 5%;
            padding-right: 5%;
            padding: 7px;
            border-radius: 6px;
            font-family:monospace;
            letter-spacing: 2px;
            font-weight: lighter;
        }
        #btn:hover{
            background-color: rgb(75, 80, 78);
            color: white;
        }
        #login{
            width: 100%;
            height: 60px;
            background-color: rgb(28, 28, 59);
            text-align: center;
            font-size: 7vh;
            font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
            color: white;
        }
    </style>

<body>
    <div id="login"> Log in</div>
    <div id="divbar">
        <form action="/login" method="post" style="text-align:center">

             <input id="ipt" type="email" name="email" placeholder="Email" required /><br /><br />

            <input id="btn" type="submit" value="Submit" />
        </form>
    </div>



</body>

</html>