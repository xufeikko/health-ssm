package Model;

public class Student {
    private byte[] uid;

    private String name;

    private Integer age;

    private Integer classid;

    public byte[] getUid() {
        return uid;
    }

    public String getName() {
        return name;
    }

    public Integer getAge() {
        return age;
    }

    public Integer getClassid() {
        return classid;
    }

    public void setUid(byte[] uid) {
        this.uid = uid;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public void setClassid(Integer classid) {
        this.classid = classid;
    }
}
