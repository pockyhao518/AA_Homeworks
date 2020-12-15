class Sub < ApplicationRecord
    validates :title, presence: true

    belongs_to :author,
        foreign_key: :user_id,
        primary_key: :id,
        class_name: :User

end
