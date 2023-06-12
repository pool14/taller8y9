<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.jsp"%>
<title>ZenithX</title>
<%@include file="header2.jsp"%>
    <form action="registerCategory" method="post">
        <img class="mb-4" src="./img/d8fcbce2cb5b4bdd9c6da2df5dd86f7a-removebg-preview.png" alt="ZenithX" width=150>
        <h4 class="text-secondary" style="color:#000000">ZenithX</h4>
        <h1 class="h5 mb-3 fw-normal" style="color:#000000">Categoria</h1>


        <div class="form-floating">
            <input type="text" class="form-control" name="category_name" id="floatingcategory" placeholder="ingrese su categoria" required autofocus pattern="{60}">
            <label for="floatingcategory">Ingrese su categoria</label>
        </div>


        <button type="submit" class="btn btn-dark">Ingresar</button>
        <div >
            <a href="login" style="color:#000000" >Iniciar usuario</a>
            <div >
                <a href="register" style="color:#000000" >Registrar usuario</a>
            </div>
            <div >
                <a href="product" style="color:#000000" >Registrar producto</a>
            </div>
        </div>

<%@include file="footer.jsp"%>