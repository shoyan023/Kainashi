class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :theme
end
