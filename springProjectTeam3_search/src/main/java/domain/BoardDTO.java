package domain;

import java.sql.Timestamp;

public class BoardDTO {

	private int board_numberID;
	private int boardCategory_number;
	private String user_id;
	private String board_title;
	private String board_contents;
	private Timestamp board_createDate;
	private Timestamp board_updateDate;
	private Timestamp board_deleteDate;
	private int board_number;
	private int board_hit;
	private String board_deleteCheck;
	
	public int getBoard_numberID() {
		return board_numberID;
	}
	public void setBoard_numberID(int board_numberID) {
		this.board_numberID = board_numberID;
	}
	public int getBoardCategory_number() {
		return boardCategory_number;
	}
	public void setBoardCategory_number(int boardCategory_number) {
		this.boardCategory_number = boardCategory_number;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_contents() {
		return board_contents;
	}
	public void setBoard_contents(String board_contents) {
		this.board_contents = board_contents;
	}
	public Timestamp getBoard_createDate() {
		return board_createDate;
	}
	public void setBoard_createDate(Timestamp board_createDate) {
		this.board_createDate = board_createDate;
	}
	public Timestamp getBoard_updateDate() {
		return board_updateDate;
	}
	public void setBoard_updateDate(Timestamp board_updateDate) {
		this.board_updateDate = board_updateDate;
	}
	public Timestamp getBoard_deleteDate() {
		return board_deleteDate;
	}
	public void setBoard_deleteDate(Timestamp board_deleteDate) {
		this.board_deleteDate = board_deleteDate;
	}
	public int getBoard_number() {
		return board_number;
	}
	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}
	public int getBoard_hit() {
		return board_hit;
	}
	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}
	public String getBoard_deleteCheck() {
		return board_deleteCheck;
	}
	public void setBoard_deleteCheck(String board_deleteCheck) {
		this.board_deleteCheck = board_deleteCheck;
	}
	
	
	
}
