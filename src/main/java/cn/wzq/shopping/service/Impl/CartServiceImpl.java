package cn.wzq.shopping.service.Impl;

import cn.wzq.shopping.bean.Book;
import cn.wzq.shopping.bean.CartItem;
import cn.wzq.shopping.bean.Msg;
import cn.wzq.shopping.bean.User;
import cn.wzq.shopping.service.BookService;
import cn.wzq.shopping.service.CartService;
import cn.wzq.shopping.utils.CookieUtil;
import cn.wzq.shopping.utils.JsonUtils;
import cn.wzq.shopping.utils.RedisUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 吴志琪 on 2018/5/23 19:01
 *
 * @Description:
 */
@Service
public class CartServiceImpl implements CartService {

    @Autowired
    BookService bookService;
    @Autowired
   RedisUtil redisUtil;


    /**
     * 添加购物车商品
     *
     * @param itemId
     * @param request
     * @param response
     * @return
     */
    @Override
    public Msg addCartItem(long itemId, HttpServletRequest request, HttpServletResponse response) {
        //取商品信息
        CartItem cartItem = null;
        //收取购物车商品列表
        List<CartItem> itemList = getCartItemList(request);
        //判断购物车商品列表是否存在此商品
        for (CartItem item : itemList) {
            //如果存在此商品
            if (item.getId() == itemId) {
                //增加商品数量
                item.setQuantity(item.getQuantity() + 1);
                cartItem = item;
                break;
            }
        }
        if (cartItem == null) {
            cartItem = new CartItem();
            Msg msg = bookService.getBookByPrimary(itemId);
            if (msg.getCode() == 100) {
                Book book = (Book) msg.getExtend().get("book");
                cartItem.setQuantity(1);
                cartItem.setB_id(book.getbId());
                cartItem.setId(book.getbId());
                cartItem.setAuthor(book.getAuthor());
                cartItem.setBook_image(book.getBookImage());
                cartItem.setBook_name(book.getBookName());
                cartItem.setPrice(book.getPrice());
                cartItem.setPubilshing(book.getPubilshing());
            }
            //添加到购物车列表
            itemList.add(cartItem);
        }
        //添加购物车到Redis或cookie
        User user = (User) request.getSession().getAttribute("user");
        if (user != null && user.getUsername() != null) {
            if (itemList.size() > 0) {
              RedisUtil redisUtil = this.redisUtil;
                //redis中保存的是skuId 为key , amount 为value的Map集合
                Map<String, String> hash = new HashMap<String, String>();
                for (CartItem item : itemList) {
                    //判断是否有同款
                    if (redisUtil.hexists("buyerCart:" + user.getUsername(), String.valueOf(item.getId()))) {
                        redisUtil.hincrBy("buyerCart:" + user.getUsername(), String.valueOf(item.getId()), item.getQuantity());
                    } else {
                        hash.put(String.valueOf(item.getId()), String.valueOf(item.getId()));
                    }
                }
                if (hash.size() > 0) {
                    redisUtil.hmset("buyerCart:" + user.getUsername(), hash,0);
                }
            }
        } else {
            CookieUtil.setCookie(request, response, "WzqCart", JsonUtils.objectToJson(itemList), true);
        }
        return Msg.success();
    }


    /**
     * 获取购物车信息
     *
     * @param request
     * @param response
     * @return
     */
    @Override
    public List<CartItem> getCartItemList(HttpServletRequest request, HttpServletResponse response) {
        //从cookies中取得商品列表
        User user = (User) request.getSession().getAttribute("user");
        if (user != null && user.getUsername() != null) {
            List<CartItem> list = JsonUtils.jsonToList(user.getUsername(), CartItem.class);//是以用户ID做登录指令还是tooken在这里制定
                return list;
        } else {
            String cartJson = CookieUtil.getCookieValue(request, "ZouCart", true);
            if (cartJson == null) {
                return new ArrayList<>();
            }
            //把json转换成商品列表
            try {
                List<CartItem> list = JsonUtils.jsonToList(cartJson, CartItem.class);
                return list;
            } catch (Exception e) {
                e.printStackTrace();
            }
            return new ArrayList<>();
        }
    }
    /**
     * 删除购物车商品
     *
     * @param itemId
     * @param request
     * @param response
     * @return
     */
    @Override
    public Msg deleteCartItem(long itemId, HttpServletRequest request, HttpServletResponse response) {
        //从cookies中获取购物车列表
        List<CartItem> itemList = getCartItemList(request);
        //从列表中找到此商品
        for (CartItem cartItem : itemList) {
            if (cartItem.getId() == itemId) {
                itemList.remove(cartItem);
                break;
            }
        }
        //把购物车列表重新写入cookies
        CookieUtil.setCookie(request, response, "ZouCart", JsonUtils.objectToJson(itemList), true);
        return Msg.success();
    }

    /**
     * 更新购物车数据
     *
     * @param itemId
     * @param quantity
     * @param request
     * @param response
     * @return
     */
    @Override
    public Msg updateItem(long itemId, int quantity, HttpServletRequest request, HttpServletResponse response) {
        List<CartItem> itemList = getCartItemList(request);
        for (CartItem cartItem : itemList) {
            if (cartItem.getId() == itemId) {
                cartItem.setQuantity(quantity);
                break;
            }
        }
        CookieUtil.setCookie(request, response, "ZouCart", JsonUtils.objectToJson(itemList), true);
        return Msg.success();
    }

    /**
     * 从cookies中取商品列表
     *
     * @param request
     * @return
     */
    private List<CartItem> getCartItemList(HttpServletRequest request) {
        //从cookie中取商品列表
        String cartJson = CookieUtil.getCookieValue(request, "ZouCart", true);
        if (cartJson == null) {
            return new ArrayList<>();
        }
        //把json转换成商品列表
        try {
            List<CartItem> list = JsonUtils.jsonToList(cartJson, CartItem.class);
            if (list == null) {
                list = new ArrayList<>();
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ArrayList<>();
    }
}
