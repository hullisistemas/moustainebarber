package br.com.hullisistemas.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.hullisistemas.config.BDConfig;
import br.com.hullisistemas.entidades.Pessoa;

public class PessoaDao {

	public List<Pessoa> listarPessoa() throws Exception {
		List<Pessoa> lista = new ArrayList<>();
 
        Connection conexao = BDConfig.getConnection();
 
        String sql = "SELECT * FROM pessoa";
 
        PreparedStatement statement = conexao.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
 
        while (rs.next()) {
            Pessoa pessoa = new Pessoa();
            pessoa.setIdpessoa(rs.getInt("idpessoa"));
            pessoa.setNome(rs.getString("nome"));
            pessoa.setTelefone(rs.getString("telefone"));
 
            lista.add(pessoa);
        }
 
        return lista;
    }
     
    public Pessoa buscarPessoaPorId(int idPessoa) throws Exception {
        Pessoa pessoa = null;
 
        Connection conexao = BDConfig.getConnection();
 
        String sql = "SELECT * FROM pessoa WHERE idpessoa = ?";
 
        PreparedStatement statement = conexao.prepareStatement(sql);
        statement.setInt(1, idPessoa);
        ResultSet rs = statement.executeQuery();
 
        if (rs.next()) {
        	pessoa = new Pessoa();
        	pessoa.setIdpessoa(rs.getInt("idpessoa"));
            pessoa.setNome(rs.getString("nome"));
            pessoa.setTelefone(rs.getString("telefone"));
        }
 
        return pessoa;
    }
 
    public int addPessoa(Pessoa pessoa) throws Exception {
        int idGerado = 0;
        Connection conexao = BDConfig.getConnection();
 
        String sql = "INSERT INTO pessoa(nome, telefone) VALUES(?, ?)";
 
        PreparedStatement statement = conexao.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        statement.setString(1, pessoa.getNome());
        statement.setString(2, pessoa.getTelefone());
        statement.execute();
         
        ResultSet rs = statement.getGeneratedKeys();
        if (rs.next()) {
            idGerado = rs.getInt(1);
        }
         
        return idGerado;
    }
     
    public void editarPessoa(Pessoa pessoa, int idPessoa) throws Exception {
        Connection conexao = BDConfig.getConnection();
 
        String sql = "UPDATE pessoa SET nome = ?, telefone = ? WHERE idpessoa = ?";
 
        PreparedStatement statement = conexao.prepareStatement(sql);
        statement.setString(1, pessoa.getNome());
        statement.setString(2, pessoa.getTelefone());
        statement.setInt(3, idPessoa);
        statement.execute();
    }
     
    public void removerPessoa(int idPessoa) throws Exception {
        Connection conexao = BDConfig.getConnection();
 
        String sql = "DELETE FROM pessoa WHERE idpessoa = ?";
 
        PreparedStatement statement = conexao.prepareStatement(sql);
        statement.setInt(1, idPessoa);
        statement.execute();
    }
	
}
