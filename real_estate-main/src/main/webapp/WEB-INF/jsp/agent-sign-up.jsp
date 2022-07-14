<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Agent Sign Up</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="../../styles/assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../../styles/css/styles.css" rel="stylesheet" />
    <meta charset="utf-8">

    <link rel="canonical"
          href="https://getbootstrap.com/docs/4.4/examples/cover/">

    <!-- Bootstrap core CSS -->
    <link
            href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
            crossorigin="anonymous">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media ( min-width : 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
</head>


<body class="text-center">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="masthead mb-auto">
        <div class="inner">
            <h3 class="masthead-brand">Agent Sign Up</h3>
            <nav class="nav nav-masthead justify-content-center">
                <a class="nav-link active" style="font-size : 24px" href="/">Home</a>
            </nav>
        </div>
    </header>

    <main role="main" class="inner cover">


        <form:form modelAttribute="agent" action="/agent-sign-up" method="post">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputFirstName">First Name</label>
                    <form:input path="firstName" type="text" class="form-control"
                                id="inputFirstName" />
                </div>
                <div class="form-group col-md-6">
                    <label for="inputLastName">Last Name</label>
                    <form:input path="lastName" type="text" class="form-control"
                                id="inputLastName" />
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="age">age</label>
                    <form:input path="age" type="text" class="form-control" />
                </div>
                <div class="form-group col-md-6">
                    <label for="inputEmail4">Email</label>
                    <form:input path="email" type="text" class="form-control"
                                id="inputEmail4" />
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputPassword4">Password</label>
                    <form:input path="password" type="password" class="form-control"
                                id="inputPassword4" />
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Sign Up</button>
        </form:form>


    </main>

    <footer class="mastfoot mt-auto">
        <div class="inner">
            <p>
                Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
                by <a href="https://twitter.com/mdo">@mdo</a>.
            </p>
        </div>
    </footer>
</div>


</body>
</html>

