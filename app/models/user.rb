class User < ApplicationRecord
  belongs_to :joining_request
  has_many :questions

end
