<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de imoveis</title>
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
</head>
<body>
	<c:import url="cabecalho.jsp"/>
	<h3><a href="mvc?servico=ListaImoveisServico">Lista im&oacute;veis</a></h3> 
	<h1>Cadastro de imoveis</h1>
	<hr />
	<form action="mvc" method="POST">
	<table>
		<tr>
			<td>Proprietario:</td>
			<td><input type="text" name="proprietario" value="${imovel.proprietario}"/></td>
		</tr>
		<tr>
			<td>Enderecoo:</td>
			<td><input type="text" name="endereco" value="${imovel.endereco}"/></td>
		</tr>
		<tr>
			<td>Tipo contrato:</td>
			<td><select name="tipo">
						<option value="${imovel.tipo}" selected="selected">${imovel.tipo}</option>
						<c:if test="${imovel.tipo eq 'venda' }">
							<option value="aluguel">aluguel</option>
						</c:if>
						<c:if test="${imovel.tipo eq 'aluguel' }">
							<option value="venda">venda</option>
						</c:if>
						<c:if test="${empty imovel.tipo}">
							<option value="aluguel">aluguel</option>
							<option value="venda">venda</option>
						</c:if>
				</select>
			</td>
		</tr>
		<tr>
			<td>Contato:</td>
			<td><input type="text" name="contato" value="${imovel.contato}"/></td>
		</tr>
		<tr>
			<td>Valor:</td>
			<td><input type="text" name="valor" value="${imovel.valor}"/></td>
		</tr>
		<tr>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
			<fmt:formatDate value="${imovel.dataInclusao.time}"	pattern="dd/MM/yyyy" var="dataFmt" />
			<td>Data Inclus&atilde;o:</td><td><custom:campoData id="dataInclusao" value="${dataFmt}" /></td>
		</tr>

	</table>
	<input type="hidden" name="id" value="${imovel.id}"/>
	<input type="hidden" name="servico" value="GravaImovelServico"/>
	<br />
	<input type ="submit" value="Gravar" />
	</form>
	<c:import url="rodape.jsp"/>
</body>
</html>