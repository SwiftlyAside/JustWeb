package Bean;

public class Shippers {

    private Integer shipperId;

    private String shipperName;

    private String phone;

    public Integer getShipperId() {
        return shipperId;
    }

    public void setShipperId(Integer shipperId) {
        this.shipperId = shipperId;
    }

    public String getShipperName() {
        return shipperName;
    }

    public void setShipperName(String shipperName) {
        this.shipperName = shipperName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    // Shippers 모델 복사
    public void CopyData(Shippers param) {
        this.shipperId = param.getShipperId();
        this.shipperName = param.getShipperName();
        this.phone = param.getPhone();
    }
}