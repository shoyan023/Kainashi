class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :themes, through: :posts
  has_many :stars, :dependent => :destroy

  def starable_for?(post)
post && post.user != self && !stars.exists?(:post_id => post.id)
end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: true, uniqueness: true
end
