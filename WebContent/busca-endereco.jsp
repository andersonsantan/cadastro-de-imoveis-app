<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, br.com.igordev.dao.*, br.com.igordev.modelo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultado da busca</title>
</head>
<body>
	<h5>C?digo do Im?vel: ${param.codigo}</h5>
	<%
	Long codigo = new Long(request.getParameter("codigo"));
	Imovel imovel = new ImovelDao().busca(codigo);
	if (imovel != null) {
	%>
		<h4>Endre&ccedil;o do im&oacute;vel: <%=imovel.getEndereco()%></h4>
	<% } else { %>
		<h4>Im&oacute;vel n&atilde;o localizado!</h4>
	<% } %>
</body>
</html>