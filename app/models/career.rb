class Career < ActiveRecord::Base
  attr_accessible :name
  has_many :users, :through => :user_careers
  has_many :user_careers
  has_many :subject
end
