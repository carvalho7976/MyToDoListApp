package br.ufc.quixada.comandos;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import br.ufc.quixada.DAOs.DAONota;
import br.ufc.quixada.entidades.Nota;
import br.ufc.quixada.iterfaces.ICmd;

public class RemoverNotaCmd implements ICmd {

	@Override
	public void executar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		try {
			DAONota daoNota = new DAONota();
			String parametros[] = request.getParameterValues("IDnotas");
			if (parametros != null && parametros.length > 0) {
				for (int i = 0; i < parametros.length; i++) {
					System.out.println("valor " + parametros[i]);
					int valor = Integer.parseInt(parametros[i]);
					daoNota.removerNota(valor);
				}
				HttpSession sessao = request.getSession();
				ArrayList<Nota> notas = daoNota.listarNotas();
				sessao.setAttribute("listaNota", notas);

			}
			response.sendRedirect("listar.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
