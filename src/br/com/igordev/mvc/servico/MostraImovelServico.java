package br.com.igordev.mvc.servico;


import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.igordev.dao.ImovelDao;
import br.com.igordev.modelo.Imovel;

public class MostraImovelServico implements Servico{
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String parametro = request.getParameter("id");
		if (parametro != null) {
			Long id = Long.parseLong(parametro);
			System.out.println("Buscando o im�vel...");
			Connection connection = (Connection)request.getAttribute("conexao");
			Imovel imovel = new ImovelDao(connection).busca(id);
			request.setAttribute("imovel", imovel);
		}
		return "/WEB-INF/jsp/cadastra-imovel.jsp";

	}

}
