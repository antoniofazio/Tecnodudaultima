class UserCareer < ActiveRecord::Base
  attr_accessible :career_id, :user_id
  belongs_to :user
  belongs_to :career
end
