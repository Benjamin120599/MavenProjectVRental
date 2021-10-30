<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>-->
<!doctype html>
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
        <title>Clients</title>
    </head>
    <body>
        <!--
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" th:href="@{/}">VRental</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="ms-auto navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" th:href="@{/clients/}">Clients</a>
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
        </nav>-->
        <nav th:replace="home :: #menu"></nav>
                
        <div class="container pt-4 pb-4">
            <div class="row py-3 pe-3" style="background-color: aqua">
                <div class="col-6">
                    <h4>New Client </h4>
                </div>
                <button type="button" class="btn btn-light ms-auto" data-bs-toggle="modal" data-bs-target="#createClient" style="width: 150px">Add Client <i class="fas fa-user-plus fa-fw"></i></button>
                <!--<div class="col-6 pe-3 bg-danger">
                    <button type="button" class="btn btn-light me-auto" data-bs-toggle="modal" data-bs-target="#createClient" style="width: 150px">Add Client <i class="fas fa-user-plus fa-fw"></i></button>
                </div>-->
            </div>
            
            <div class="row">
                <table class="table table-striped">
                    <thead>
                        <th>Username</th>
                        <th>Firstname</th>
                        <th>Lastname</th>
                        <th>Phone</th>
                        <th></th>
                    </thead>
                    <tbody>
                        <tr th:each="cl: ${listaClientes}">
                            <td th:text="${cl.username}" />
                            <td th:text="${cl.firstname}" />
                            <td th:text="${cl.lastname}" />
                            <td th:text="${cl.phone}" />
                            <td class="text-center"><button class="btn btn-light" style="font-size: 20px;"><i class="fas fa-pen px-3" style="font-size: 25px;  color: green">     </i></button> <button class="btn btn-light" style="font-size: 20px;"><i class="fas fa-trash px-3" style="font-size: 25px; color: red"></i></button> </td>
                            <!-- <td class="text-center"><button class="btn btn-warning" style="font-size: 20px;"><i class="fas fa-pen"></i></button> <button class="btn btn-danger" style="font-size: 20px;"><i class="fas fa-trash"></i></button></td> -->
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
               
        <!-- Modal -->
        <div class="modal fade" id="createClient" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Create Client</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form th:action="@{/clients/save}" th:object="${cl}" method="post">
                            <div class="form-group mb-3">
                                <label for="firstname" class="form-label">Firstname: </label>
                                <input type="text" class="form-control" th:field="*{firstname}" id="firstname" required="true">
                                <p class="alert alert-danger" th:if="${#fields.hasErrors('firstname')}" th:errors="*{firstname}" />
                            </div>
                            <div class="form-group mb-3">
                                <label for="lastname" class="form-label">Lastname: </label>
                                <input type="text" class="form-control" th:field="*{lastname}" id="lastname" required="true">
                            </div>
                            <div class="form-group mb-3">
                                <label class="form-check-label" for="phone">Phone number:</label>
                                <input type="tel" class="form-control" th:field="*{phone}" id="phone" required="true" maxlength="10">
                            </div>
                            
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-success">Create</button>
                            
                        </form>
                    </div>
                    <!--<div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-success">Create</button>
                    </div>-->
                </div>
            </div>
        </div>
    </body>
    
    

    
</html>
