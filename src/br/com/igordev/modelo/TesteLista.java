package br.com.igordev.modelo;

import java.util.List;

import br.com.igordev.dao.ImovelDao;

public class TesteLista {
	public static void main(String[] args) {
		List<Imovel> imoveis = new ImovelDao().getLista();
		System.out.println("Lista de imóveis:\n");
		imoveis.forEach(i ->
			System.out.println(i.getId() + " - " + i.getProprietario()));
	}// fim main

}
