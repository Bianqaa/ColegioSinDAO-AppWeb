
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="java.sql.ResultSet"%>
<%
	String buscar="";
	if(request.getParameter("buscar")!=null) buscar=request.getParameter("buscar");
	try(ResultSet rs=Connector
						.getConnection()
						.createStatement()
						.executeQuery("select * from cursos where titulo like '%"+buscar+"%'")){
		while(rs.next()){
			out.print("<tr>");
			out.print("<th scope='row'>"+rs.getInt("id")+"</th>");
			out.print("<td>"+rs.getString("titulo")+"</td>");
			out.print("<td>"+rs.getString("profesor")+"</td>");
			out.print("<td>"+rs.getString("dia")+"</td>");
			out.print("<td>"+rs.getString("turno")+"</td>");
			out.println("</tr>");
		}
	}catch(Exception e){
		System.out.println(e);
	}
%>