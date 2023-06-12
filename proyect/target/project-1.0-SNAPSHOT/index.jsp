<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.jsp"%>
<title>ZenithX</title>
<%@include file="header2.jsp"%>
  <form action="registerUser" method="post">
    <img class="mb-4" src="./img/d8fcbce2cb5b4bdd9c6da2df5dd86f7a-removebg-preview.png" alt="ZenithX" width=150>
    <h4 class="text-secondary">ZenithX</h4>
    <h1 class="h5 mb-3 fw-normal" style="color:#000000" >Registro</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="user_firstname" id="floatingname" placeholder="ingrese su nombre" required autofocus >
      <label for="floatingname">Ingrese su nombre</label>
    </div>

    <div class="form-floating">
      <input type="text" class="form-control" name="user_lastname" id="floatingfirsname" placeholder="ingrese su apellido" required  pattern="[A-Za-z]{2,40}">
      <label for="floatingfirsname">Ingrese su apellido</label>
    </div>

    <div class="form-floating">
      <input type="email" class="form-control" name="user_email" id="floatingemail" placeholder="ingrese su correo" required  pattern="{60}">
      <label for="floatingemail">Ingrese su correo</label>
    </div>

    <div class="form-floating">
      <input type="password" class="form-control" name="user_password" id="floatingpassword" placeholder="ingrese su contraseña" required  pattern="[A-Za-z0-9]{8,12}">
      <label for="floatingpassword">Ingrese su contraseña</label>
    </div>

    <button type="submit" class="btn btn-dark">Enviar</button>
    <div id="register">
      <a href="login" style="color:#000000" >Inciar usuario</a>
    <div >
      <a href="category" style="color:#000000" >Registrar categoria</a>
    </div>
    <div >
      <a href="product" style="color:#000000" >Registrar producto</a>
    </div>
    </div>
