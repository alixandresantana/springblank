<%@ page language="java" contentType="text/html; charset=iso-8859-1" pageEncoding="iso-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registrar Solicita��o</title>

<link rel="stylesheet" type="text/css"href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"src="view/bootstrap/js/bootstrap.min.js">
</script>
</head>

<body>
<c:import url="/view/menu/menu.jsp" />

<center>
	<hr>
	<h3>Registrar Solicita��o</h3>
	<hr>
	
			<div style="text-align: center; color: green;">${mensagemSucessoSolicitacao}</div>

	<form action="registrarSolicitacao" method="POST" enctype="multipart/form-data">
			
			
			<div class="form-group">
			<c:if test="${usuarioLogado.perfil eq 'ALUNO'}">
			<label for="usuario">Nome:</label>
			<input type="text" id="nome" name="nome" value="${usuarioLogado.nome}" class="form-control" style="width: 200px;" disabled/>
			<input type="hidden" id="usuario" name="usuario" value="${usuarioLogado.id}" class="form-control" style="width: 200px;"/>
			</c:if>
			</div>
			
				
			<form:errors path="solicitacao.usuario" style="text-align: center; color: red;"/>
 		<div class="form-group">
 		<c:if test="${usuarioLogado.perfil eq 'CRAD'}">
 		<label for="usuario">Nome:</label>		
 		<select id="usuario" name="usuario" class="form-control" style="width: 200px;" >
  			
 			<option value="">Selecione uma op��o</option>
 		<c:forEach items="${listarUsuarioAtivo}" var="usuario"> <!-- esta varievel "var='usuario'" pode ter qualquer nome   -->
 				<option value="${usuario.id}">${usuario.nome}</option>
 			
 			</c:forEach>
 			</select>
 			</c:if>
			</div>
			<form:errors path="solicitacao.tipoSolicitacao" style="text-align: center; color: red;"/>
		<div class="form-group">
			<label for="tipoSolicitacao">Tipo de solicita��o:*</label>
			<select id="tipoSolicitacao" name="tipoSolicitacao" class="form-control" style="width: 200px;" >
			
				<option value="">Selecione uma op��o</option>
				<c:forEach items="${listaTipoSolicitacaoAtiva}" var="obj"> <!-- esta varievel "var='obj'" pode ter qualquer nome   -->
					<option value="${obj.id}">${obj.descricao}</option>
				</c:forEach>
			
			</select>
			</div>
			
			<div class="form-group">
				<label for="file">Anexos:</label>
				<input type="file" id="file" name="file" class="form-control" style="width: 200px;"/>
			</div>
			
			<div class="form-group">
				<label for="complemento">Complemento:</label>
				<textarea name="complemento" id="complemento" cols="4" rows="5" class="form-control" maxlength="255" style="width: 200px;"></textarea>
				
			</div>
			
			
			<button type="reset" class="btn btn-danger" role="button">Limpar &nbsp; </button>
		<button type="submit" class="btn btn-success"> &nbsp; Registrar &nbsp;</button>
			
	</form>
	
</center>
</body>
</html>