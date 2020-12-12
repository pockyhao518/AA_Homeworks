class User < ApplicationRecord
  validates :name, presence: true

  has_many(:enrollment, {
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :Enrollment
  })

  has_many(:enrolled_courses, {
    through: :enrollment,
    source: :course
  })
end
