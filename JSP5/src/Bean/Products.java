package Bean;

public class Products {

    private Integer productId;

    private String productName;

    private Integer supplierId;

    private Integer categoryId;

    private String unit;

    private Double price;

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Integer supplierId) {
        this.supplierId = supplierId;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    // Products 모델 복사
    public void CopyData(Products param) {
        this.productId = param.getProductId();
        this.productName = param.getProductName();
        this.supplierId = param.getSupplierId();
        this.categoryId = param.getCategoryId();
        this.unit = param.getUnit();
        this.price = param.getPrice();
    }
}