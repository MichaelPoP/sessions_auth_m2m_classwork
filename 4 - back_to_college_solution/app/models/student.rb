class Student < ActiveRecord::Base

  has_many :courses, through: :enrollments
  has_many :enrollments

  validates :name,
    presence: true,
    uniqueness: true,
    length: {minimum: 3}

  def enroll ids

    enrollments.where("course_id NOT IN (?)", ids.map(&:to_i)).delete_all

    ids.each do |id|
      enrollments.find_or_create_by(course_id: id)
    end
  end

end
