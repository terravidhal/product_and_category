package com.dojo.fullspring.starter.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.dojo.fullspring.starter.models.Category;
import com.dojo.fullspring.starter.models.Product;
import com.dojo.fullspring.starter.repositories.CategoryRepository;




@Service
public class CategoryService {
	private final CategoryRepository categoryRepository;
	
	public CategoryService (CategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}
	
	public List<Category> allCategories(){
		return categoryRepository.findAll();
	}
	
	public List<Category> getAssignedCategories(Product product){
		return categoryRepository.findAllByProducts(product);  // renvoie ts ls categories associées à ce produit specifique
	}
	
	public List<Category> getUnassignedCategories(Product product){
		return categoryRepository.findByProductsNotContains(product); // renvoie ts ls categories qui ne sont pas associées à ce produit specifique
	}
	
	public Category findById(Long id) {
		Optional<Category> optionalCategory = categoryRepository.findById(id);
		if(optionalCategory.isPresent()) {
			return optionalCategory.get();
		}else {
			return null;
		}
	}
	
	public Category addCategory(Category category) {
		return categoryRepository.save(category);
	}
	
	public Category updateCategory(Category category) {
		return categoryRepository.save(category);
	}
	
	public void deleteCategory(Category category) {
		categoryRepository.delete(category);
	}
}