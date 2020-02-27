class Blogger < ApplicationRecord
    has_many :posts 
    has_many :destinations ,through: :posts

    validates :name, uniqueness: true
    validates :age, numericality: { only_integer: true , greater_than: 0 }
    validates :bio, presence: true, length: { minimum: 31 }
end
