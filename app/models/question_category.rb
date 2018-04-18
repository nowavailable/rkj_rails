class QuestionCategory < ApplicationRecord
  validates :label, presence: true, length: { maximum: 256 }
end
