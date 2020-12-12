class Band < ApplicationRecord
    validates :name, presence:true

    has_many :album,
    foreign_key: :band_id,
    class_name: :Album
end
