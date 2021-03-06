package cn.wzq.shopping.service;

import cn.wzq.shopping.bean.Allint;
import cn.wzq.shopping.bean.Detail;
import cn.wzq.shopping.bean.Order;

import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 吴志琪 on 2018/5/25 20:58
 *
 * @Description:
 */
@Service
public interface OrderService {
    //创建订单和订单细节
    public String create(Allint allint, Order Order, List<Detail> details) throws Exception;

    //获取所有订单
    public List<Order> getAllOrder();

    //获取该用户名下所有订单
    public List<Order> getAllOrderByUser(Long id);

    //获取该订单下所有订单细节
    public List<Detail> getAllDetailByOrder(String id);

}
