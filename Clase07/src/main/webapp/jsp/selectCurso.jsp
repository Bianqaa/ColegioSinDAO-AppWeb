
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="java.sql.ResultSet"%>
<%
	String selectCurso="";
	
	try(ResultSet rs=Connector
						.getConnection()
						.createStatement()
						.executeQuery("select * from cursos")){
		while(rs.next()){
			
			out.print("<option value='"+rs.getInt("id")+"' >"+rs.getString("titulo")+"</option>");
			
		}
		out.print(selectCurso);
	}catch(Exception e){
		System.out.println(e);
	}
%>