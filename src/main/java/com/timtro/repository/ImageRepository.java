package com.timtro.repository;

import com.timtro.entity.Image;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ImageRepository extends JpaRepository<Image, Long> {
//    @Query(value = "select t from Image t where t.place.placeId = ?1")
//    Image getImageByPlace(long placeId);
}
