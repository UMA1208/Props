class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :pick
  has_many :comments

  acts_as_taggable
  acts_as_taggable_on :skills, :interests
end
