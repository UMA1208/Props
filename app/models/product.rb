class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :pick
  has_many :comments
end
