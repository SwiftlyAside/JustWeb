package Care.Lab;

public class Hits {

    // 글번호
    private Integer no;

    // 조회수
    private Integer readNo;

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public Integer getReadNo() {
        return readNo;
    }

    public void setReadNo(Integer readNo) {
        this.readNo = readNo;
    }

    // Hits 모델 복사
    public void CopyData(Hits param)
    {
        this.no = param.getNo();
        this.readNo = param.getReadNo();
    }
}
