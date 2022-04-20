package top.jiyuan.jiyuan_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import top.jiyuan.jiyuan_springboot.dao.UserRepository;
import top.jiyuan.jiyuan_springboot.domain.User;

import org.springframework.data.domain.Pageable;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public void save(User u) {
        try {
            userRepository.save(u);
        } catch (Exception e) {
            throw e;
        }
    }

    @Override
    public Page<User> findAll(String kw, Pageable pageable) {
        return userRepository.findByKeyword(kw, pageable);
    }

    @Override
    public User findById(Integer userid) {
        return userRepository.findById(userid).get();
    }

    @Override
    public void delete(User u) {
        userRepository.delete(u);
    }

    @Override
    public void deleteById(Integer userid) {
        userRepository.deleteById(userid);
    }

    @Override
    @Transactional // 保证事务的一致性
    public void deletes(List<User> users) {
        for(User u : users) {
            userRepository.delete(u);
        }
    }
}
