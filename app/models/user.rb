class User < ApplicationRecord
  has_secure_password
  has_many :favorites
  #将来的にUser has_many postsになった場合、名前がぶつかってしまうことを避ける。
  has_many :fav_posts, through: :favorites, source: :posts

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def like(post)
    favorites.find_or_create_by(post_id: post.id)
  end

  def unlike(post)
   favorite = favorites.find_by(post_id: post.id)
   favorite.destroy if favorite
  end

  def hello
    'hello!'
  end
end
