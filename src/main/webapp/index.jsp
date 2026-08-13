<!DOCTYPE html>
<html lang="pt-br" xml:lang="pt-br">
    <head>
        <title>Alo Mundo</title>
    </head>
    <body>
        <h1>Alo Mundo</h1>
        Alo Mundo, <%=request.getParameter("nome")!=null?request.getParameter("nome"):"Docker" %>!<p>
    </body>
</html>	