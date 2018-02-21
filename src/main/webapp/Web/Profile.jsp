<%-- 
    Document   : Profile
    Created on : Feb 16, 2018, 5:33:25 PM
    Author     : Bang-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pusher</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
            crossorigin="anonymous">
        
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
            crossorigin="anonymous">
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
        
    </head>
    <body>
    <dir>
        <img src="https://www.picz.in.th/images/2018/02/19/28176315_1700763773319130_1653912373_n.png" width="80" height="80">

        <input type="button" value="Expliorar" id="expliorar" >
        <input type="button" value="Catagory" id="catagory" >
        <dir>            
            <%--<input type="button" <%--value="<%=System.out.print("name userTest")%>"--%>
            <h3><%= request.getAttribute("username")%> <h3>                
                    </dir>   
                    <form action="AddJobServlet" method="get">
                        <input type="button" value="Create" id="create">
                        <input type="submit" value="JOB">
                    </form>
                    </dir>
                    </body>
                    </html>
