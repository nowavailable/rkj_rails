class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user_specialized
  belongs_to :user

end
