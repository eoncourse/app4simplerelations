class Task < ActiveRecord::Base
  attr_accessible :name, :note, :priority, :employee_id
  belongs_to :employee

  validates :name, :presence => true
  validates :priority, :numericality => true

end
