package cn.wzq.shopping.service.Impl;

import cn.wzq.shopping.bean.Category;
import cn.wzq.shopping.bean.CategoryExample;
import cn.wzq.shopping.dao.CategoryMapper;
import cn.wzq.shopping.service.CategoryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 吴志琪 on 2018/5/21 9:38
 *
 * @Description:
 */
@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public List<Category> getParentTypeList() {
        return categoryMapper.getParentTypeList();
    }
}
