class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    INCLUSION = {in: ["chinese", "italian", "japanese", "french", "belgian"], message: "%{value} is not a valid category"}
    validates :name, presence: true
    validates :address, presence: true
    validates :category, presence: true, inclusion: INCLUSION

end
