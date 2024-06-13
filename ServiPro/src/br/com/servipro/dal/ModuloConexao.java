/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.servipro.dal;

import java.sql.*;

/**
 *
 * @author User
 */
public class ModuloConexao {

    //metodo responsavel pelo estabelecimento da conexão com o banco
    public static Connection conector() {
        Connection conexao;
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/dbservipro";
        String user = "root";
        String password = "luan200305";
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
            return null;
        }
    }
}
