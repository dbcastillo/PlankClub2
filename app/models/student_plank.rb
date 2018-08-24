class StudentPlank < ApplicationRecord
  belongs_to :plank
  belongs_to :student
  validates :duration, presence: true
  validates_numericality_of :duration, on: :create

  def info
    self.plank.planktype + " : " + "#{self.duration}"
  end

  def tito
    @student = Student.find(params[:student_id])
  end
end
