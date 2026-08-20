<!DOCTYPE html>
<html lang="pt-br" xml:lang="pt-br">
    <head>
        <title>Alô, mundo!</title>
    </head>
    <body>
        <h1>Alô, mundo!</h1>
        Alô, mundo, <%=request.getParameter("nome")!=null?request.getParameter("nome"):"Docker" %>!<p>
    </body>
</html>	