package com.suptech.helper;

import java.sql.*;
import javax.servlet.http.*;

import jakarta.servlet.http.HttpServlet;
;public class ConnectionProvider extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	private static Connection connection;

	public static Connection getConnection() {

		try {
			if (connection == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost/suptech", "root", "");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}

}
