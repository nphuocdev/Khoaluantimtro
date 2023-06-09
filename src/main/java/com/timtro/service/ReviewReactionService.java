package com.timtro.service;


import com.timtro.entity.ReviewReaction;
import com.timtro.repository.ReviewReactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewReactionService {

    @Autowired
    private ReviewReactionRepository reviewReactionRepository;

    public void PostReaction(ReviewReaction reaction) {
        this.reviewReactionRepository.save(reaction);
    }

    public void DeletePostReaction(long reactionId) {
        this.reviewReactionRepository.deleteById(reactionId);
    }

    public List<ReviewReaction> getReaction() {
        return this.reviewReactionRepository.findAll();
    }

    public List<ReviewReaction> getReactionByReview(long reviewId) {
        return this.reviewReactionRepository.getReactionByReview(reviewId);
    }

    public ReviewReaction GetLastReaction() {
        return this.reviewReactionRepository.GetLastReaction();
    }

    public ReviewReaction findById(long reactionId) {
        return this.reviewReactionRepository.findById(reactionId).orElse(null);
    }

    public void save(ReviewReaction reviewReaction) {
        this.reviewReactionRepository.save(reviewReaction);
    }
}
