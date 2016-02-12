class Child < ApplicationRecord
  serialize :medications,Array
  serialize :allergies,Array
  belongs_to :User
end
