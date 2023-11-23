package com.dojo.fullspring.starter.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.dojo.fullspring.starter.models.Category;
import com.dojo.fullspring.starter.models.Product;
import com.dojo.fullspring.starter.repositories.ProductRepository;




@Service
public class ProductService {
	private final ProductRepository productRepository;
	
	public ProductService(ProductRepository productRepository) {
		this.productRepository = productRepository;
	}
	
	public List<Product> allProducts(){
		return productRepository.findAll();
	}
	
	public List<Product> getAssignedProducts(Category category){
		return productRepository.findAllByCategories(category);  // renvoie ts ls produits associées à cette categorie specifique
	}
	
	public List<Product> getUnassignedProducts(Category category){
		 return productRepository.findByCategoriesNotContains(category); // renvoie ts ls produits qui ne sont pas associées à cette categorie specifique
	}
	
	public Product findById(Long id) {
		Optional<Product> optionalProduct = productRepository.findById(id);
		if(optionalProduct.isPresent()) {
			return optionalProduct.get();
		}else {
			return null;
		}
	}
	
	public Product addProduct(Product product) {
		return productRepository.save(product);
	}
	
	public Product updateProduct(Product product) {
		return productRepository.save(product);
	}
	
	public void deleteProduct(Product product) {
		productRepository.delete(product);
	}
}