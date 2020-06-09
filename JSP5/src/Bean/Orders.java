package Bean;

public class Orders {

    private Integer orderId;

    private Integer customerId;

    private Integer employeeId;

    private String orderDate;

    private Integer shipperId;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public Integer getShipperId() {
        return shipperId;
    }

    public void setShipperId(Integer shipperId) {
        this.shipperId = shipperId;
    }

    // Orders 모델 복사
    public void CopyData(Orders param) {
        this.orderId = param.getOrderId();
        this.customerId = param.getCustomerId();
        this.employeeId = param.getEmployeeId();
        this.orderDate = param.getOrderDate();
        this.shipperId = param.getShipperId();
    }
}
