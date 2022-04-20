package top.jiyuan.jiyuan_springboot.service;

import org.springframework.data.domain.Page;
import top.jiyuan.jiyuan_springboot.domain.User;

import org.springframework.data.domain.Pageable;
import java.util.List;

public interface UserService {
    public void save(User u);
    public Page<User> findAll(String kw, Pageable pageable);
    public User findById(Integer userid);
    public void delete(User u);
    public void deleteById(Integer userid);
    public void deletes(List<User> users);
}
