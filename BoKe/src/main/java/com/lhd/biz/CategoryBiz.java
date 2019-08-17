package com.lhd.biz;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.lhd.bean.Category;
import com.lhd.dao.CategoryMapper;

@Service
public class CategoryBiz {
	@Resource
	private CategoryMapper mapper;
	//查询所有
	public List<Category> queryAll () {
		return	mapper.selectByExample(null);
	}
}
