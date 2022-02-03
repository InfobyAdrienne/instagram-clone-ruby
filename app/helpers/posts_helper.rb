module PostsHelper

  def post_liked_by_user? post_id
    Like.where(post_id: post_id, account_id: current_account.id).any?
    # loading this query within a loop
    # this is fine for this light weight application
    # avoid this for a real world application / production environment 
  end 

end