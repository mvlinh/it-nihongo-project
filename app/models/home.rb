class Home < ApplicationRecord
    belongs_to :user
    has_one_attached :home_avatar   
    has_many_attached :detail_image   
end
