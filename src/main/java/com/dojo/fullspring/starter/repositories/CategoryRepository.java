package com.dojo.fullspring.starter.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dojo.fullspring.starter.models.Category;
import com.dojo.fullspring.starter.models.Product;





@Repository
public interface CategoryRepository extends CrudRepository<Category, Long> {
	List<Category> findAll();
	Category findByIdIs(Long id);
	List<Category> findAllByProducts(Product product);
	List<Category> findByProductsNotContains(Product product);
}