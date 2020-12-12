require 'action_view'

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    validates :birth_date, :name, :description, presence: true
    validates :color, presence: true, inclusion: { in: %w(black brown orange white)}
    validates :sex, presence: true, inclusion: { in: %w(M F)}

    def age
        time_ago_in_words(self.birth_date)
    end

    has_many :cat_rental_requests,
        foreign_key: :cat_id,
        class_name: :CatRentalRequest,
        dependent: :destroy

end