class Star < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates_uniqueness_of :post_id || :current_user_id
end
