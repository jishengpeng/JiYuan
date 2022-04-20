package top.jiyuan.jiyuan_springboot.domain;

import com.sun.istack.NotNull;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = javax.persistence.GenerationType.IDENTITY)
    private Integer userid;
    @Column(unique = true, length = 30)
    @NotNull
    private String username;
    @Column(length = 30)
    @NotNull
    private String passwd;
    @Column(length = 30)
    private String nickname;
    public enum Sex{
        M,F
    }
    private Sex gender;//实际输入数据库的是索引值
    private LocalDateTime birthday;
    @Column(length = 11)
    private String mobile;
    @Column(length = 100)
    private String email;
    private Integer lastTime;//最后登录时间
    private Integer loginCount;//登录次数
    private Integer validState=1;//用户是否有效，0表示无效，1表示有效

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
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

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Sex getGender() {
        return gender;
    }

    public void setGender(Sex gender) {
        this.gender = gender;
    }

    public LocalDateTime getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDateTime birthday) {
        this.birthday = birthday;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getLastTime() {
        return lastTime;
    }

    public void setLastTime(Integer lastTime) {
        this.lastTime = lastTime;
    }

    public Integer getLoginCount() {
        return loginCount;
    }

    public void setLoginCount(Integer loginCount) {
        this.loginCount = loginCount;
    }

    public Integer getValidState() {
        return validState;
    }

    public void setValidState(Integer validState) {
        this.validState = validState;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (!getUserid().equals(user.getUserid())) return false;
        return getUsername().equals(user.getUsername());
    }

    @Override
    public int hashCode() {
        int result = getUserid().hashCode();
        result = 31 * result + getUsername().hashCode();
        return result;
    }
}
