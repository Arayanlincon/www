package cn.wzq.shopping.service;

import cn.wzq.shopping.bean.Category;

import java.util.List;

/**
 * Created by 邹创基 on 2018/5/21 9:42
 *
 * @Description:
 */

public interface CategoryService {
    List<Category> getParentTypeList();
}
