package br.com.igordev.mvc.servico;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PrimeiroServico implements Servico{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("Iniciando a execucao do servico");
		System.out.println("Fazendo o redirecionamento");
		return "primeiro-servico.jsp";
	}

}
