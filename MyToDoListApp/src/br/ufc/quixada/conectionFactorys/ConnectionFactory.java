package br.ufc.quixada.conectionFactorys;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.management.RuntimeErrorException;

public class ConnectionFactory {

	public Connection getConnection() {
		  try {
			   Class.forName("org.postgresql.Driver");
			   Connection con = DriverManager.getConnection(
				          "jdbc:postgresql://localhost:5432/ToDoList", "postgres", "1234");
	            return con;
	        } catch (SQLException e) {
	            throw new RuntimeException(e);
	        } catch (ClassNotFoundException e) {
				throw new RuntimeException(e);
			}
	}

}
