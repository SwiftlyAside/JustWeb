package Bean;

public class Employees {

    private Integer employeeId;

    private String lastName;

    private String firstName;

    private String birthDate;

    private String photo;

    private String notes;

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    // Employees 모델 복사
    public void CopyData(Employees param) {
        this.employeeId = param.getEmployeeId();
        this.lastName = param.getLastName();
        this.firstName = param.getFirstName();
        this.birthDate = param.getBirthDate();
        this.photo = param.getPhoto();
        this.notes = param.getNotes();
    }
}
