package com.hnit.learning_shop.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hnit.learning_shop.entity.Category;
import com.hnit.learning_shop.entity.CategorySub;
import com.hnit.learning_shop.entity.Interest;
import com.hnit.learning_shop.service.IndexService;

@Controller
@RequestMapping("index")
public class IndexController {

	@Autowired
	private IndexService indexService;

	@RequestMapping
	public String toIndex(Model model, @RequestParam(defaultValue = "1") String uid) {
		List<Category> catList = indexService.findAllCategory();
		List<Interest> interestList = indexService.findAllInterestByUid(uid);
		List<CategorySub> subCatList = new ArrayList<>();
		for (Interest interest : interestList) {
			subCatList.add(indexService.findSubById(interest.getSubCatId()));
			if(subCatList.size() > 6){
				break;
			}
		}
		for (Category cat : catList) {
			for (CategorySub categorySub : cat.getSubCatList()) {
				for (Interest interest : interestList) {
					if (interest.getSubCatId() == categorySub.getId()) {
						categorySub.setActive(true);
						break;
					}
				}
			}
		}
		model.addAttribute("catList", catList);
		model.addAttribute("subCatList", subCatList);
		return "learning-index";
	}

	@RequestMapping("/saveInterest")
	public String saveInterest(String[] ids) {
		indexService.saveInterest(ids);
		return "redirect:index";
	}
}
