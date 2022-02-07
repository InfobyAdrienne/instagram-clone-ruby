class LikesController < ApplicationController
  before_action :authenticate_account!

  def save_like 
    @like = Like.new(post_id: params[:post_id], account_id: current_account.id)
    @post_id = params[:post_id]
    existing_like = Like.where(post_id: params[:post_id], account_id: current_account.id)

    respond_to do |format|
      format.js {
      if existing_like.any?
      # checking to see if the like from the account on this post already exists
        existing_like.first.destroy
      # if the like already exists then destroy it 
      # it returns an array so we need to specify the 'first' 
        @success = false
      elsif @like.save
        @success = true
      else 
        @success = false
      end 

       @post_likes = Post.find(@post_id).total_likes_count
       render 'posts/like' 
      }
    end
  end 

end 


