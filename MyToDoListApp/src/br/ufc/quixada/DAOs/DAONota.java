package br.ufc.quixada.DAOs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import br.ufc.quixada.conectionFactorys.ConnectionFactory;
import br.ufc.quixada.entidades.Nota;

public class DAONota {
	private Connection con;

	public DAONota() {
		this.con = getConnection();
	}
	private Connection getConnection(){
		ConnectionFactory factory = new ConnectionFactory();
		return factory.getConnection();
	}

	public boolean criarNota(Nota nota) throws SQLException {
		PreparedStatement p = con
				.prepareStatement("insert into nota (id, status, texto) values (?, ?, ?)");
		p.setBoolean(2, nota.getStatus());
		p.setString(3, nota.getTexto());
		ArrayList<Nota> notas = listarNotas();
		if(notas.size()<1){
			p.setInt(1, nota.getId());
		}else{
			p.setInt(1, notas.get(notas.size()-1).getId()+1);
		}
		if(p.execute()){
			p.close();
			return true;
		}else{
			p.close();
			return false;
		}
	}	

	public boolean removerNota(int idNota) throws SQLException {
		PreparedStatement p = con
				.prepareStatement("delete from nota where id=?");
		p.setInt(1, idNota);
		if(p.execute()){
			p.close();
			return true;
		}else{
			p.close();
			return false;
		}
	}

	public ArrayList<Nota> listarNotas() throws SQLException {
		ArrayList<Nota> notas = new ArrayList<Nota>();
		   PreparedStatement p = con.prepareStatement("select * from nota");
		   ResultSet rs = p.executeQuery();
		   while(rs.next()){
		      Nota nota = new Nota();
		      nota.setId(rs.getInt("id"));
		      nota.setStatus(rs.getBoolean("status"));
		      nota.setTexto(rs.getString("texto"));
		      notas.add(nota);
		      
		   }
		return notas;
	}
}
