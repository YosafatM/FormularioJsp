<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
          <%@page import="java.sql.*,java.io.*" %>
        <% 
            
            String nombree = request.getParameter("nombre");
            String apellidopp = request.getParameter("apellidop");
            String apellidomm =request.getParameter("apellidom");
            String escuelaa = request.getParameter("escuela");
            
            System.out.println(nombree);
            Connection con=null;
            Statement sta=null;
            try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con=DriverManager.getConnection("jdbc:mysql://localhost/Formulario","root","n0m3l0");
            sta=con.createStatement();
            }    
            catch(SQLException error){
                out.print(error.toString());
            }
            try{
                sta.executeUpdate("INSERT INTO Datos(Nombre,ElApellidoPat,ElApellidoMat,Escuela)values('"+nombree+"','"+apellidopp+"','"+apellidomm+"','"+escuelaa+"');");
                
                out.println("<script>alert('Registro dato de alta exitosamente.') </script>");
                con.close();
                out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/FormLabIII/'/>");
            }
            catch(SQLException error){
                out.print(error.toString());
            }
            con.close();
            
            
        
        
        %>
    </body>
</html>
