class Album < ApplicationRecord
    validates :title, presence:true
    validates :band_id, presence:true
    validates :year, length:{is:4}, presence:true

    belongs_to :band,
    foreign_key: :band_id,
    class_name: :Band
end
