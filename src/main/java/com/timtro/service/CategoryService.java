package com.timtro.service;

import com.timtro.entity.Category;
import com.timtro.entity.LitleCategory;
import com.timtro.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    public Category getCategoryId(String ma) {
        return this.categoryRepository.findById(ma).orElse(null);
    }

    public List<Category> getAll() {
        return this.categoryRepository.findAll();
    }

    public List<Category> getCategoryBySearch(String search) {
        return this.categoryRepository.getCategoryBySearch(search);
    }

    public void AddCategoryPlace(Category category) {
        this.categoryRepository.save(category);
    }

    public void EditCategory(Category category) {
        this.categoryRepository.save(category);
    }

    public void DeleteCategory(String categoryId) {
        this.categoryRepository.deleteById(categoryId);
    }

    public List<LitleCategory> getLitleCategoryByCategory(String categoryId) {
        return this.categoryRepository.getLitleCategoryByCategory(categoryId);
    }
}

