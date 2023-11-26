<%@page import="java.sql.ResultSet"%>
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="java.sql.PreparedStatement"%>
<%
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
String edad = request.getParameter("edad");
String idCurso = request.getParameter("idCurso");
if (nombre != null && apellido != null) {
	try (PreparedStatement ps = Connector.getConnection().prepareStatement(
	"insert into alumnos (nombre, apellido, edad, idCurso) value (?,?,?,?)",
	PreparedStatement.RETURN_GENERATED_KEYS)) {
		ps.setString(1, nombre);
		ps.setString(2, apellido);
		ps.setString(3, edad);
		ps.setString(4, idCurso);
		ps.execute();
		ResultSet rs = ps.getGeneratedKeys();
		if (rs.next())
	out.print("Se guardo el alumno id: " + rs.getInt(1));
		else
	out.print("No se pudo guardar el alumno!");
	} catch (Exception e) {
		out.print("No se pudo guardar el alumno!");
		System.out.println(e);
	}
}
%>