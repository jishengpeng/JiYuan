package top.lijiabo.jiyuan;

import javax.persistence.*;

@Entity
@Table(name = "JIYUANUSER")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;
    @Column(name = "username", nullable = false, unique = true)
    private String username;
    @Column(name = "passwd", nullable = false)
    private String passwd;
    @Column(name = "mobile", length = 11)
    private String mobile;
    @Column(name = "numReceive", nullable = false, columnDefinition = "INTEGER DEFAULT 0")
    private Integer numReceive;
    @Column(name = "numPost", nullable = false, columnDefinition = "INTEGER DEFAULT 0")
    private Integer numPost;
    @Column(name = "credit", nullable = false, columnDefinition = "INTEGER DEFAULT 100")
    private Integer credit;
    @Column(name = "community")
    private String community;
    public enum Role {
        ADMIN, CUSSER/*客服*/, USER
    }
    @Enumerated(EnumType.STRING)
    @Column(name = "role", nullable = false)
    private Role role;

    public String getCommunity() {
        return community;
    }

    public void setCommunity(String community) {
        this.community = community;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Integer getNumReceive() {
        return numReceive;
    }

    public void setNumReceive(Integer numReceive) {
        this.numReceive = numReceive;
    }

    public Integer getNumPost() {
        return numPost;
    }

    public void setNumPost(Integer numPost) {
        this.numPost = numPost;
    }

    public Integer getCredit() {
        return credit;
    }

    public void setCredit(Integer credit) {
        this.credit = credit;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        return getId().equals(user.getId());
    }

    @Override
    public int hashCode() {
        return getId().hashCode();
    }
}