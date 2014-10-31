class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :theme
  has_many :stars, :dependent => :destroy
  validates_uniqueness_of :theme_id, :scope => :user_id
end
