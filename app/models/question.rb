class Question < ActiveRecord::Base
  attr_accessible :query, :subject_id, :user__id
  belongs_to :subject
  has_many :answer
  belongs_to :user
end
