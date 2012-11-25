class Address < ActiveRecord::Base
  attr_accessible :city, :employee_id, :street, :zip
  belongs_to :employee

  def list
    return "#{street}, #{city}, #{zip}"
  end
end
