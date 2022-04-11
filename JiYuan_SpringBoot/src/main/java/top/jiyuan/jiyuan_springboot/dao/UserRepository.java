package top.jiyuan.jiyuan_springboot.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import top.jiyuan.jiyuan_springboot.domain.User;

public interface UserRepository extends JpaRepository<User, Integer> {
    @Query("select u from User u where u.username like ?1 or u.nickname like ?1 or u.mobile like ?1 or u.email like ?1")
    public Page<User> findByKeyword(String kw, Pageable pageable);

    @Query("update User u set u.passwd = ?1 where u.userid = ?2")
    public void modifyPassword(String pwd, Integer uid);
}
