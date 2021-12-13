class Home < ApplicationRecord
    belongs_to :user
    has_one_attached :home_avatar   
    has_many_attached :detail_image   
    has_many :status, -> { order "created_at DESC"}
    has_many :homelikes
    has_many :home_review, -> { order "created_at DESC"}
end
