package jstl.model.vo;

public class Board {
	
	private int no;
	private String title;
	private String content;
	private String writer;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	public Board(int no, String title, String content, String writer) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.writer = writer;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "Board [no=" + no + ", title=" + title + ", content=" + content + ", writer=" + writer + "]";
	}
	
	
	
}
