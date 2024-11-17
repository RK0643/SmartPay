package jbr.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jbr.springmvc.dao.UserDao;
import jbr.springmvc.model.Login;
import jbr.springmvc.model.User;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public void register(User user) {
        userDao.saveUser(user);
    }

    @Override
    public User validateUser(Login login) {
        return userDao.validateUser(login);
    }

    @Override
    public boolean userExists(long phonenumber) {
        return userDao.userExists(phonenumber);
    }
}