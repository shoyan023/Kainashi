class Theme < ActiveRecord::Base
  has_many :posts, :dependent => :destroy
  has_many :users, through: :posts
  default_scope { where('posted_at <= ?', Date.today) }

end
