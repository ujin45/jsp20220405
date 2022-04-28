package app01.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import app01.dto.BoardDto;

public class BoardDao {

	// Dto : Data transfer object
	public boolean insert(Connection con, BoardDto dto) {

		String sql = "INSERT INTO Board (title, body, inserted) "
				+ "VALUES (?, ?, ?) ";

		int result = 0;

		// connection
		// statement
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
				pstmt.setNString(1, dto.getTitle());
				pstmt.setNString(2, dto.getBody());

			//LocalDate 날짜
			//LocalDateTime 날짜 시간
			LocalDateTime now = LocalDateTime.now();
			pstmt.setTimestamp(3, Timestamp.valueOf(now));

			// execute query
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		// 결과 return

		return result == 1;
	}

	public List<BoardDto> list(Connection con) {
		
		List<BoardDto> list = new ArrayList<>();
		
		String sql = "SELECT id, title, inserted FROM Board ORDER BY id DESC";
		
		try (Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			
			while (rs.next()) {
				BoardDto board = new BoardDto();
				board.setId(rs.getInt(1));
				board.setTitle(rs.getString(2));
				board.setInserted(rs.getTimestamp(3).toLocalDateTime());
				
				list.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public BoardDto get(Connection con, int id) {

		String sql = "SELECT id, title, body, inserted "
				+ "FROM Board "
				+ "WHERE id = ?";
		
		try (PreparedStatement stmt = con.prepareStatement(sql);){
			
			stmt.setInt(1, id);
			
			try (ResultSet rs = stmt.executeQuery()){
				if (rs.next()) {
					BoardDto board = new BoardDto();
					board.setId(rs.getInt(1));
					board.setTitle(rs.getNString(2));
					board.setBody(rs.getNString(3));
					board.setInserted(rs.getTimestamp(4).toLocalDateTime());
					
					return board;
		
				}
			
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
