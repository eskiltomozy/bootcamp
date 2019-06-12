class Idiom < ApplicationRecord
  validates :expression, presence: true, length: { maximum: 140, minimum: 3 }
  validates :meaning, presence: true, length: { maximum: 140, minimum: 3 }
end
