class JoiningRequest < ApplicationRecord

  validates :token, presence: true, length: { maximum: 256 }

  def generate_token

  end
end
