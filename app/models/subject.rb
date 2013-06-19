class Subject < ActiveRecord::Base
  attr_accessible :name, :question_id, :year
  belongs_to :career
  has_many :question
end
