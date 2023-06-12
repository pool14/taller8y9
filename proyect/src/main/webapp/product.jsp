<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.jsp"%>
<title>ZenithX</title>
<%@include file="header2.jsp"%>
  <form action="registerProduct" method="post">
    <img class="mb-4" src="./img/d8fcbce2cb5b4bdd9c6da2df5dd86f7a-removebg-preview.png" alt="ZenithX" width=150>
    <h4 class="text-secondary" style="color:#000000">ZenithX</h4>
    <h1 class="h5 mb-3 fw-normal" style="color:#000000">Productos</h1>


    <div class="form-floating">
      <input type="text" class="form-control" name="product_name" id="floatingproduct" placeholder="ingrese su producto" required autofocus pattern="{60}">
      <label for="floatingproduct">Ingrese su producto</label>
    </div>

    <div class="form-floating">
      <input type="number" class="form-control" name="product_value" id="floatingvalue" placeholder="El precio del producto" required autofocus pattern="{2,60}">
      <label for="floatingvalue">Ingrese el precio del producto</label>
    </div>
    <div class="form-floating">
      <input type="number" name="category_id" class="form-control" id="floatingId"
             placeholder="Ingrese el numero de la categoria"  required
             pattern="{60}">
      <label for="floatingId">Ingrese el numero de la categoria </label>
    </div>

    <button type="submit" class="btn btn-dark">Ingresar</button>
    <div>
      <a href="login" style="color:#000000">Inciar usuario</a>
      <div>
        <a href="register" style="color:#000000" >Registrar usuario</a>
        <div >
          <a href="category" style="color:#000000" >Registrar categoria</a>
        </div>
      </div>
    </div>
    <%@include file="footer.jsp"%>

