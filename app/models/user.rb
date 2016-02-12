class User < ApplicationRecord

  # has_many :Child, dependent: :destroy
  has_many :Child

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
