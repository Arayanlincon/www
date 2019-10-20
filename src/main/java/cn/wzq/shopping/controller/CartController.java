package cn.wzq.shopping.controller;

import cn.wzq.shopping.bean.CartItem;
import cn.wzq.shopping.service.CartService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;

/**
 * Created by 吴志琪on 2018/5/23 12:50
 *
 * @Description:购物车Controller
 */
@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    CartService cartService;

    //添加书本
    @RequestMapping("/add/{itemId}")
    public String addCartItem(@PathVariable Long itemId, HttpServletRequest request, HttpServletResponse response) {
        cartService.addCartItem(itemId, request, response);
        return "cart/success";
    }

    //跳转到购物车列表
    @RequestMapping("/cart")
    public String toCart(HttpServletRequest request, HttpServletResponse response, Model model) {
        List<CartItem> list = cartService.getCartItemList(request, response);
        model.addAttribute("cartList", list);
        return "cart/cartList";
    }

    //删除购物车货物
    @RequestMapping("/delete/{itemId}")
    public String deleteCartItem(@PathVariable Long itemId, HttpServletRequest request, HttpServletResponse response) {
        cartService.deleteCartItem(itemId, request, response);
        return "redirect:/cart/cart";
    }

    //书本数量修改
    @RequestMapping("/updateQuantity/{itemId}/{itemQuantity}")
    public String updateQuantity(@PathVariable("itemId") Long itemId, @PathVariable("itemQuantity") Integer quantity,
                                 HttpServletRequest request, HttpServletResponse response) {
        cartService.updateItem(itemId, quantity, request, response);
        return "redirect:/cart/cart";
    }
}
    
   /* String username = sessionProviderService.getAttributterForUsername(RequestUtils.getCSessionId(request, response));
         if (null != username) {
                 //登录了
               //4, 将购物车追加到Redis中
                 cartService.insertBuyerCartToRedis(buyerCart, username);
             //5, 清空Cookie 设置存活时间为0, 立马销毁
               Cookie cookie = new Cookie(Constants.BUYER_CART, null);
               cookie.setPath("/");
             cookie.setMaxAge(-0);
               response.addCookie(cookie);
         		}else {
                //未登录
               //4, 保存购物车到Cookie中
               //将对象转换成json格式
                Writer w = new StringWriter();
                om.writeValue(w, buyerCart);
                Cookie cookie = new Cookie(Constants.BUYER_CART, w.toString());
                //设置path是可以共享cookie
                cookie.setPath("/");
            //设置Cookie过期时间: -1 表示关闭浏览器失效  0: 立即失效  >0: 单位是秒, 多少秒后失效
               cookie.setMaxAge(24*60*60);
             //5,Cookie写会浏览器
               response.addCookie(cookie);
            }
            
            //6, 重定向
          return "redirect:/shopping/toCart";*/

    

