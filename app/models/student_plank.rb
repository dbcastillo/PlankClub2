class StudentPlank < ApplicationRecord
  belongs_to :plank
  belongs_to :student

  def info
    self.plank.planktype + " : " + "#{self.duration}"
  end
end
