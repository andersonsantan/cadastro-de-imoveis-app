<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, br.com.igordev.dao.*, br.com.igordev.modelo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de imoveis cadastrados</title>
</head>
<body>
<table cellspacing="2" width="70%">
		<thead align="left"><tr>
			<th>Proriet&aacute;rio</th>
			<th>Endere&ccedil;o</th>
			<th>Tipo</th>
			<th>Contato</th>
			<th>Valor</th>
			<th>Data inclus&atilde;o</th>
		</tr></thead>
		<%
		List<Imovel> imoveis = new ImovelDao().getLista();
		for (Imovel i : imoveis) {
		%>
			<tr>
				<td><%=i.getProprietario()%></td>
				<td><%=i.getEndereco()%></td>
				<td><%=i.getTipo() %></td>
				<td><%=i.getContato()%></td>
				<td><%=i.getValor()%></td>
				<td><%=i.getDataInclusao().getTime()%></td>
			</tr>
				
	    <%
	    }
		%>
	</table>

</body>
</html>