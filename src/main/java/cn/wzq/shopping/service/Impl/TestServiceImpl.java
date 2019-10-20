package cn.wzq.shopping.service.Impl;

import cn.wzq.shopping.bean.User;
import cn.wzq.shopping.dao.UserMapper;
import cn.wzq.shopping.service.TestService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by 邹创基 on 2018/6/21 12:29
 *
 * @Description:
 */
@Service
public class TestServiceImpl implements TestService {
    @Autowired
    UserMapper userMapper;

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void addUser(User user) {
        userMapper.saveUser(user);
        String string = null;
        if (string.equals("")) {
            int i = 0;
        }
    }
}
