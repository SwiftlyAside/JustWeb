package Bean;

public class Suppliers {

    private Integer supplierId;

    private String supplierName;

    private String contactName;

    private String address;

    private String city;

    private String postalCode;

    private String country;

    private String phone;

    public Integer getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Integer supplierId) {
        this.supplierId = supplierId;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    // Suppliers 모델 복사
    public void CopyData(Suppliers param) {
        this.supplierId = param.getSupplierId();
        this.supplierName = param.getSupplierName();
        this.contactName = param.getContactName();
        this.address = param.getAddress();
        this.city = param.getCity();
        this.postalCode = param.getPostalCode();
        this.country = param.getCountry();
        this.phone = param.getPhone();
    }
}