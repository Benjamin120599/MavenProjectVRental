<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico"/>
        <title>VRental</title>
        
        <!-- Bootstrap core CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>                
    </head>
    <body>
        <div class="container">
            <!-- Main component for a primary marketing message or call to action -->
            <div class="row">
                <div class="col">
                    <form action="#" th:action="@{/clients/save}" th:object="${client}" method="post">
                        <div class="form-group" >
                            <label for="firstname">Nombre</label>
                            <input type="text" class="form-control"
                                   th:field="*{firstname}" id="firstname" required="true">
                                <p class="alert alert-danger" th:if="${#fields.hasErrors('firstname')}" th:errors="*{firstname}" />
                        </div>
                        <div class="form-group" >
                            <label for="lastname">Apellidos</label>
                            <input type="text" class="form-control"
                                   th:field="*{lastname}" id="lastname" required="true">
                        </div>
                        <div class="form-group" >
                            <label for="phone">Telefono</label>
                            <input type="tel" class="form-control"
                                   th:field="*{phone}" id="phone" required="true" >
                        </div>
                        <tr>
                            <button type="submit" >Guardar</button>
                        </tr>
                    </form>
                </div>
            </div>
        </div> <!-- /container -->
        
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>