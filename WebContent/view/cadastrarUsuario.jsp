<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastrar Usuário</title>

<link rel="stylesheet" type="text/css"href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"src="view/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<center><div>
	<hr>
	<h3>Cadastrar Usuário</h3>
	<hr>
	
	<form action="incluirUsuario" method="post" enctype="multipart/form-data">
		<p>
			<div class="form-group">
		<label for="nome">Nome:*</label>
	<input type="text" id="nome" class="form-control"name="nome" style="width: 200px;" maxlength="100" />
</div>
		
		
			<div class="form-group">
		<label for="matricula">Matricula:*</label>
	<input type="text" id="matricula" class="form-control"name="matricula" style="width: 200px;" maxlength="100" />
</div>
	
		
		<div class="form-group">
			<label for="perfil">Matricula:*</label><select class="form-control" style="width: 200px;" >
			
			<option value="">Selecione uma opção</option>
			<option value="ALUNO">Aluno</option>
			<option value="PROFESSOR">Professor</option>
			<option value="COORDENADOR">Coordenador</option>
			
			</select>
			</div>
		
		
	
			<a href="listarProduto" class="btn btn-danger"role="button">Cancelar</a> &nbsp;
		<button type="submit" class="btn btn-primary"> &nbsp; Cadastrar &nbsp;
		</button>
	</form>
</div></center>
</body>
</html>