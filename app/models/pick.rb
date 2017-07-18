class Pick < ActiveRecord::Base
  belongs_to :user
  has_many :products
  has_many :comments
end
