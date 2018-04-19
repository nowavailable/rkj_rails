class User < ApplicationRecord
  belongs_to :joining_request
  has_many :questions, dependent: :restrict_with_exception
  has_many :acknowledgements, dependent: :restrict_with_exception

  validates :login, presence: true, length: { maximum: 256 }
  validates :email, presence: true, length: { maximum: 256 }

  def on_destroy
    # 識別情報はマスキング
    # 属性情報は残す

  end

  # 記事として参照されるときの、リード（先頭から何文字まで、とか）の生成ルール等要.
  # それはroleだろうか。


end
