class Question < ApplicationRecord
  has_many :answers
  belongs_to :user
  belongs_to :question_category

  validates :question_category_id, presence: true
  validates :user_id, presence: true
  validates :subject, presence: true, length: { maximum: 256 }
  validates :body, presence: true, length: { maximum: 3000 }


end
