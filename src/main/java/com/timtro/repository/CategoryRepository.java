package com.timtro.repository;

import com.timtro.entity.Category;
import com.timtro.entity.LitleCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category, String> {

    @Query(value = "select t from Category t where t .name like %?1% or t.categoryId like %?1%")
    List<Category> getCategoryBySearch(String search);

    @Query(value = "select t from LitleCategory t where t.category.categoryId = ?1")
    List<LitleCategory> getLitleCategoryByCategory(String categoryId);
}
