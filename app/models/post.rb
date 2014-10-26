class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :theme
  has_many :stars
end
