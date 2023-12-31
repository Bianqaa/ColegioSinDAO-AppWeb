<%@page import="java.sql.ResultSet"%>
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<%@ include file="/jsp/head.jsp" %>
</head>
<body onload="startTime()">


	<div class="container-lg bg-primary-subtle">
		<%@ include file="/jsp/menu.jsp" %>
		
		<h1 class="text-center text-primary bg-secondary-subtle p-1 m-1">Mantenimiento de cursos</h1>
		<form>
			<div class="m-2 p-2">

				<!-- control título  -->
				<div class="mb-3 row">
					<label for="titulo" class="col-sm-2 col-form-label text-primary">Título</label>
					<div class="col-sm-10">
						<input type="text" class="form-control text-primary" name="titulo"
							id="titulo" value="" required minlength="3" maxlength="20">
					</div>
				</div>

				<!-- control profesor  -->
				<div class="mb-3 row">
					<label for="profesor" class="col-sm-2 col-form-label text-primary">Profesor</label>
					<div class="col-sm-10">
						<input type="text" class="form-control text-primary"
							name="profesor" id="profesor" value="" required minlength="3"
							maxlength="20">
					</div>
				</div>

				<!-- control select día  -->
				<div class="mb-3 row">
					<label for="dia" class="col-sm-2 col-form-label text-primary">Día</label>
					<div class="col-sm-10">
						<select class="form-select text-primary"
							aria-label="Default select example" name="dia" id="dia">
							<option value="LUNES" selected>lunes</option>
							<option value="MARTES">martes</option>
							<option value="MIERCOLES">miércoles</option>
							<option value="JUEVES">jueves</option>
							<option value="VIERNES">viernes</option>
						</select>
					</div>
				</div>

				<!-- control select turno  -->
				<div class="mb-3 row">
					<label for="turno" class="col-sm-2 col-form-label text-primary">Turno</label>
					<div class="col-sm-10">
						<select class="form-select text-primary"
							aria-label="Default select example" name="turno" id="turno">
							<option value="MAÑANA" selected>mañana</option>
							<option value="TARDE">tarde</option>
							<option value="NOCHE">noche</option>
						</select>
					</div>
				</div>

				<!-- botones -->
				<div class="mb-3 row">
					<button type="reset" class="btn btn-danger col-sm-4 m-2">Borrar</button>
					<button type="submit" class="btn btn-success col-sm-4 m-2">Guardar</button>
				</div>

				<!-- control información  -->
				<div class="mb-3 row">
					<label for="informacion"
						class="col-sm-2 col-form-label text-primary">Información</label>
					<div class="col-sm-10">
						<input type="text" readonly class="form-control text-primary"
							id="informacion"
							value='<%@ include file="/jsp/cursosInsert.jsp" %>'>
					</div>
				</div>

			</div>
		</form>

		<div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Título</th>
						<th scope="col">Profesor</th>
						<th scope="col">Día</th>
						<th scope="col">Turno</th>
					</tr>
				</thead>
				<tbody>
					<%@ include file="/jsp/cursosTable.jsp" %>
				</tbody>
			</table>
		</div>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>