<%-- 
    Document   : index
    Created on : 22/09/2021, 01:56:47
    Author     : Shelly Pam
--%>

<%@page import="modelo.Producto"  %>
<%@page import="modelo.Marca"  %>
<%@page  import="javax.swing.table.DefaultTableModel"%>
<%@page  import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRODUCTOS</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
      
        
    </head>
    <body>
        <h1>Formulario Productos
           
        <div class="container">
            <form action="sr_producto" method="post" class="form-group">
                 <br>
                <label for="lbl_producto">Producto:</label>
                <input type="text" name="txt_producto" id="txt_producto" class="form-control" placeholder="Ejemplo: Manzana" required>
                <label for="lbl_marca">Marca:</label>
                <select name="txt_marca" id="txt_marca" class="form-control">
                    <%
                    Marca marca = new Marca();
                    HashMap<String,String> drop = marca.drop_marca();
                    for(String i: drop.keySet()){
                        out.println("<option value='"+i+"'>"+ drop.get(i)+"</option>");
                        
                        }
                    %>
                    
                </select>
                
                <label for="lbl_descripcion">Descripcion:</label>
                <input type="text" name="txt_descripcion" id="txt_descripcion" class="form-control" placeholder="Ejemplo:Roja Chilena" required>
                <label for="lbl_pcosto">Precio Costo:</label>
                <input type="number" name="txt_pcosto" id="txt_pcosto" class="form-control" placeholder="Ejemplo: 5" required>
                <label for="lbl_pventa">Precio Venta:</label>
                <input type="number" name="txt_pventa" id="txt_pventa" class="form-control" placeholder="Ejemplo: 8" required>
                <label for="lbl_existencia">Existencia:</label>
                <input type="number" name="txt_existencia" id="txt_existencia" class="form-control" placeholder="Ejemplo: 20" required>
                <br>
                <button  name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-outline-primary">Agregar</button>
                
                
            </form>
    <table class="table table-striped">
    <thead>
      <tr>
        <th>Producto</th>
        <th>Marca</th>
        <th>Descripcion</th>
        <th>Precio Costo</th>
        <th>Precio Venta</th>
        <th>Existencia</th>
        
      </tr>
    </thead>
    <tbody id="tbl_productos">
        <%
            Producto producto=new Producto();
            DefaultTableModel tabla = new DefaultTableModel();
            tabla=producto.leer(); 
            for(int t=0; t<tabla.getRowCount();t++){
                out.println("<tr data-id="+ tabla.getValueAt(t, 0) + " data-id_m="+ tabla.getValueAt(t, 2)+">");
                out.println("<td>"+ tabla.getValueAt(t, 1)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 3)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 4)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 5)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 6)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 7)+"</td>");
                
                out.println("</tr>");
            }
        
        %>
      
    </tbody>
  </table>
        </div>    
            
        </h1>
        
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    </body>
</html>
