class Post < ApplicationRecord
    belongs_to :destination
    belongs_to :blogger

    validates :content, presence: true, length: { minimum: 10 }
end
