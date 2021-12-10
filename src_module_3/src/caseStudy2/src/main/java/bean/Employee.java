package bean;

public class Employee {
    private int id;
    private String name;
    private String dateOfBirth;
    private String codeEmployee;
    private String salary;
    private String numberPhone;
    private String email;
    private String address;
    private int codePoint;
    private int codeSkill;
    private int codeDepartment;

    public Employee() {
    }

    public Employee(int id, String name, String dateOfBirth, String codeEmployee,
                    String salary, String numberPhone, String email, String address,
                    int codePoint, int codeSkill, int codeDepartment) {
        this.id = id;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.codeEmployee = codeEmployee;
        this.salary = salary;
        this.numberPhone = numberPhone;
        this.email = email;
        this.address = address;
        this.codePoint = codePoint;
        this.codeSkill = codeSkill;
        this.codeDepartment = codeDepartment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getCodeEmployee() {
        return codeEmployee;
    }

    public void setCodeEmployee(String codeEmployee) {
        this.codeEmployee = codeEmployee;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(String numberPhone) {
        this.numberPhone = numberPhone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getCodePoint() {
        return codePoint;
    }

    public void setCodePoint(int codePoint) {
        this.codePoint = codePoint;
    }

    public int getCodeSkill() {
        return codeSkill;
    }

    public void setCodeSkill(int codeSkill) {
        this.codeSkill = codeSkill;
    }

    public int getCodeDepartment() {
        return codeDepartment;
    }

    public void setCodeDepartment(int codeDepartment) {
        this.codeDepartment = codeDepartment;
    }
}
