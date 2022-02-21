<%--
  Created by IntelliJ IDEA.
  User: davic
  Date: 2022-02-20
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Útiköltség kalkulátor</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-color: #C4B6B6">
    <jsp:useBean id="autoPeldany" class="hu.david.app.Auto"/>
    <jsp:setProperty property="*" name="autoPeldany"/>

    <jsp:useBean id="utPeldany" class="hu.david.app.Utvonal"/>
    <jsp:setProperty name="utPeldany" property="*"/>

    <jsp:useBean id="uzemAnyagPeldany" class="hu.david.app.UzemAnyag"/>
    <jsp:setProperty name="uzemAnyagPeldany" property="*"/>

    <div class="container my-4">
        <h1>A gépjármű adatai</h1>
        <%
            out.print("Rendszám: "+ autoPeldany.getRendSzam() + "<br>");
            out.print("Fogyasztás: "+ autoPeldany.getFogyasztas() + "<br>");
            out.print("Üzemanyagtípus: "+ autoPeldany.getUzemanyagTipus() + "<br>");
            out.print("Szállítható személyek száma: "+ autoPeldany.getSzallithatoSzemelyekSzama() + "<br>");
            out.print("Motortérfogat: "+ autoPeldany.getMotorTerfogat() + "<br>");
            out.print("Gyártási év: "+ autoPeldany.getGyartasiEv() + "<br>");
            out.print("Gyártási év kategoria: "+ autoPeldany.getEvjaratKategoria()+ "</br>");
        %>
        <%
            if (autoPeldany.kevesetFogyasztEldont()){
                out.print("<div class='alert alert-success' role='alert'>Keveset fogyaszt</div>");
            } else {
                out.print("<div class='alert alert-danger' role='alert'>Sokat fogyaszt</div>");
            }
        %>
        <h1>Az út adatai</h1>
        <%
            out.print("Az út hossza (km): "+utPeldany.getHosszKm() + "km <br>");
            out.print("Az üzemanyagár (Ft): " + uzemAnyagPeldany.getUzemAnyagAr()+ "Ft <br>");
            out.print("Költség: "+(autoPeldany.getFogyasztas()/100)*utPeldany.getHosszKm()*uzemAnyagPeldany.getUzemAnyagAr());
        %>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
</body>
</html>
