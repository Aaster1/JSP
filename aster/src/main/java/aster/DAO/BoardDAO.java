package aster.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import aster.DTO.Board;

public class BoardDAO extends JDBConnection{
	
	public List<Board> selectList(){
		
		List<Board> boardList = new ArrayList<Board>();
		
		String sql = "SELECT * FROM board;";
				
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				Board board = new Board();
				board.setBoardNo(rs.getInt("board_no"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setContent(rs.getString("content"));
				board.setRegDate(rs.getDate("reg_date"));
				board.setUpdDate(rs.getDate("upd_date"));
				
				boardList.add(board);
			}
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return boardList;
	}

	
	public Board select(int boardNo) {
		Board board = new Board();
		
		String sql = "SELECT * FROM WHERE board_no=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, boardNo);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				board.setBoardNo(rs.getInt("board_no"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setContent(rs.getString("content"));
				board.setRegDate(rs.getDate("reg_date"));
				board.setUpdDate(rs.getDate("upd_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return board;
	}
	
	
}
