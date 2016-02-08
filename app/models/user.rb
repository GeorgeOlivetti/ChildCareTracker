class User < ApplicationRecord

  validates :firstName,
      presence: true
  validates :lastName,
      presence: true
  validates :phoneNumber,
      presence: true,
      uniqueness: true,
      format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }

  def to_s
    "#{firstName} #{lastName}"
  end
end
