class Answer < ActiveRecord::Base
  attr_accessible :negative_rate, :positive_rate, :question_id, :teacher_approval, :user__id
  belongs_to :question
  belongs_to :user
end
