
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="java.sql.ResultSet"%>
<%
	String buscar="";
	if(request.getParameter("buscar")!=null) buscar=request.getParameter("buscar");
	try(ResultSet rs=Connector
						.getConnection()
						.createStatement()
					.executeQuery("select * from alumnos where nombre like '%"+buscar+"%' || apellido like '%"+buscar+"%'")){
		while(rs.next()){
			out.print("<tr>");
			out.print("<td>"+rs.getString("nombre")+"</td>");
			out.print("<td>"+rs.getString("apellido")+"</td>");
			out.print("<td>"+rs.getString("edad")+"</td>");
			out.print("<td>"+rs.getString("idCurso")+"</td>");
			out.println("</tr>");
		}
	}catch(Exception e){
		System.out.println(e);
	}
%>