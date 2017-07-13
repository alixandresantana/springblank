package br.ifpe.dao;

import java.sql.SQLException;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import br.ifpe.basicas.TipoSolicitacao;
import br.ifpe.basicas.Usuario;
import br.ifpe.util.ConnectionFactory;

public class TipoSolicitacaoDao {

	private Connection connection;

	public TipoSolicitacaoDao() {
			try {
				this.connection = (Connection) new ConnectionFactory().getConnection();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
	
	
	public void inserir(TipoSolicitacao servico) {
		try {
			String sql = "INSERT INTO servico(descricao, anexo, complemento) VALUES (?,?,?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, servico.getDescricao());
			stmt.setBoolean(2, servico.getAnexo());
			stmt.setBoolean(3, servico.getComplemento());
			

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}