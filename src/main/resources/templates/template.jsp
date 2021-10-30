<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
    
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/fe5b61a65e.js" crossorigin="anonymous"></script>
        <title>Home</title>
    </head>
    
    <body>
        <nav th:fragment="menu" id="menu" class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" th:href="@{/}">VRental</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="ms-auto navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" th:href="@{/clients/}">Clients</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Prices</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropvehicles" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Vehicles
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropvehicles">
                                <li><a class="dropdown-item" href="#">Vehicles</a></li>
                                <!--<li><a class="dropdown-item" href="#">Vehicle Prices</a></li>-->
                                <li><a class="dropdown-item" href="#">Brands</a></li>
                                <li><a class="dropdown-item" href="#">Models</a></li>
                                <li><a class="dropdown-item" href="#">Return Details</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdownlicences" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Licences
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownlicences">
                                <li><a class="dropdown-item" href="#">Driver Licences</a></li>
                                <li><a class="dropdown-item" href="#">Licence Types</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        
        
        
        
        <div class="container">
            <!-- <div class="jumbotron">
                <h3 th:text="'Bienvenido '+${name}+' como estás?'"></h3>
                <!--<h3 th:text="'Bienvenido '+${clients}+' como estás?'"></h3>
            </div> -->
            
        </div>
    </body>
</html>