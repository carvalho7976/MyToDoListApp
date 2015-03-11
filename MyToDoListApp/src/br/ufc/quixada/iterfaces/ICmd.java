package br.ufc.quixada.iterfaces;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ICmd {

	public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
