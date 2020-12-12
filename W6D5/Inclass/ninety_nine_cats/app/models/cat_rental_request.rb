class CatRentalRequest < ApplicationRecord
    validates :status, inclusion: { in: %w(PENDING APPROVED DENIED)}, presence: true
    validates :cat_id, :start_date, :end_date, presence: true

    belongs_to :cat,
        foreign_key: :cat_id,
        class_name: :Cat 
    
    def overlapping_requests
        CatRentalRequest
            .select("cat_rental_requests.*")
            .joins(:cat)
            .group("cats.id")
            .having("COUNT(cat_rental_request.id) > 1")
    end

end