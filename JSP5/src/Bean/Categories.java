package Bean;

public class Categories {
    private Integer categoryId;
    private String categoryName;
    private String description;

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // Categories 모델 복사
    public void CopyData(Categories param) {
        this.categoryId = param.getCategoryId();
        this.categoryName = param.getCategoryName();
        this.description = param.getDescription();
    }
}
