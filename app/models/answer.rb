class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :mentor
  belongs_to :user

  validates :question_id, presence: true
  validates :user_id, presence: true
  validates :seq_num, presence: true, numericality: true
  validates :body, presence: true, length: { maximum: 3000 }
  validates :anchor, presence: true, length: { maximum: 256 }

end
