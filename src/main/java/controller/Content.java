package controller;

public class Content {
    private String company_name;
    private String title;
    private String firstname;
    private String lastname;
    private int mobile_no;
    private int landline_no;

    public Content(){
        
    }
    
    public Content(String company_name, String title, String firstname, String lastname, int mobile_no,
            int landline_no) {
        this.company_name = company_name;
        this.title = title;
        this.firstname = firstname;
        this.lastname = lastname;
        this.mobile_no = mobile_no;
        this.landline_no = landline_no;
    }
    public String getCompany_name() {
        return company_name;
    }
    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getFirstname() {
        return firstname;
    }
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }
    public String getLastname() {
        return lastname;
    }
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    public int getMobile_no() {
        return mobile_no;
    }
    public void setMobile_no(int mobile_no) {
        this.mobile_no = mobile_no;
    }
    public int getLandline_no() {
        return landline_no;
    }
    public void setLandline_no(int landline_no) {
        this.landline_no = landline_no;
    }
   
    
    
}
