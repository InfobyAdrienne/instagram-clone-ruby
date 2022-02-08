class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :image, ImageUploader

  has_many :posts 
  has_many :likes
  
  def full_name
    "#{first_name} #{last_name}"
  end 

  def total_followers
    Follower.where(following_id: self.id).count 
    # Look for how many time this account id appears in the following_id column
  end 

  def total_following
    Follower.where(follower_id: self.id).count 
    # Look for how many time this account id appears in the follower_id column
  end 

end
