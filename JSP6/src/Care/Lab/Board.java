package Care.Lab;

import java.sql.Date;

public class Board {
    // 글번호
    private Integer no;
    // 아이디
    private String id;
    // 제목
    private String title;
    // 내용
    private String contents;
    // 작성일
    private Date writeDate;

    public Board() {
    }

    public Board(Integer no, String id, String title, String contents, Date writeDate) {
        this.no = no;
        this.id = id;
        this.title = title;
        this.contents = contents;
        this.writeDate = writeDate;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public Date getWriteDate() {
        return writeDate;
    }

    public void setWriteDate(Date writeDate) {
        this.writeDate = writeDate;
    }

    // Board 모델 복사
    public void CopyData(Board param) {
        this.no = param.getNo();
        this.id = param.getId();
        this.title = param.getTitle();
        this.contents = param.getContents();
        this.writeDate = param.getWriteDate();
    }
}