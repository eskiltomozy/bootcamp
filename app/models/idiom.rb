class Idiom < ApplicationRecord
  validates :expression, presence: true, length: { maximum: 100, minimum: 10 }
  validates :meaning, presence: true, length: { maximum: 100, minimum: 10 }
end
